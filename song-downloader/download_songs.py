#!/usr/bin/env python3
"""
Download a list of songs as MP3s using the yt-audio-api server
(https://github.com/alperensumeroglu/yt-audio-api).

The songs list is a text file with one song per line:

    1. SONG NAME - SINGER
    2. Another Song, Another Singer      (comma form also works)

Usage:
    python download_songs.py <output_folder> <songs_file> [--api http://127.0.0.1:5000]

The API only accepts a "url" parameter, but it hands that value straight to
yt-dlp, so we pass a "ytsearch1:<query>" URL to grab the top YouTube result.
"""

import argparse
import json
import re
import sys
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path

# "1. SONG - SINGER" (split on the last " - ") or "1. SONG, SINGER" (split on the last comma).
LINE_PATTERNS = [
    re.compile(r"^\s*\d+\s*[.)]\s*(?P<song>.+)\s+-\s+(?P<singer>.+?)\s*$"),
    re.compile(r"^\s*\d+\s*[.)]\s*(?P<song>.+),\s*(?P<singer>.+?)\s*$"),
]


def parse_songs(text):
    """Return a list of (song, singer) tuples from '1. SONG - SINGER' or '1. SONG, SINGER' lines."""
    songs = []
    for line_number, line in enumerate(text.splitlines(), start=1):
        if not line.strip():
            continue
        match = next((m for m in (p.match(line) for p in LINE_PATTERNS) if m), None)
        if not match:
            print(f"  ! Skipping line {line_number}, expected '1. SONG - SINGER': {line!r}")
            continue
        songs.append((match.group("song"), match.group("singer")))
    return songs


def safe_filename(name):
    """Strip characters that are not allowed in file names on Windows/macOS/Linux."""
    return re.sub(r'[<>:"/\\|?*\x00-\x1f]', "", name).strip(" .") or "untitled"


def request_token(api, query):
    url = f"{api}/?" + urllib.parse.urlencode({"url": f"ytsearch1:{query}"})
    # Downloading + converting happens during this call, so allow plenty of time.
    with urllib.request.urlopen(url, timeout=600) as response:
        return json.load(response)["token"]


def download_file(api, token, destination):
    url = f"{api}/download?" + urllib.parse.urlencode({"token": token})
    with urllib.request.urlopen(url, timeout=600) as response, open(destination, "wb") as out:
        while chunk := response.read(64 * 1024):
            out.write(chunk)


def api_error_message(error):
    try:
        body = json.loads(error.read())
        return " - ".join(str(v) for v in (body.get("error"), body.get("detail")) if v)
    except Exception:
        return str(error)


def main():
    parser = argparse.ArgumentParser(description="Download songs as MP3s via yt-audio-api.")
    parser.add_argument("folder", help="Folder to save the MP3s into (created if missing)")
    parser.add_argument("songs_file", help="Text file with lines like '1. SONG NAME - SINGER'")
    parser.add_argument("--api", default="http://127.0.0.1:5000",
                        help="Base URL of the running yt-audio-api server (default: %(default)s)")
    args = parser.parse_args()

    api = args.api.rstrip("/")
    folder = Path(args.folder).expanduser()
    folder.mkdir(parents=True, exist_ok=True)

    songs = parse_songs(Path(args.songs_file).read_text(encoding="utf-8"))
    if not songs:
        sys.exit("No songs found in the list.")

    failed = []
    for index, (song, singer) in enumerate(songs, start=1):
        destination = folder / f"{safe_filename(f'{singer} - {song}')}.mp3"
        print(f"[{index}/{len(songs)}] {song} by {singer}")

        if destination.exists():
            print(f"  = Already exists, skipping: {destination}")
            continue

        try:
            token = request_token(api, f"{song} {singer} audio")
            download_file(api, token, destination)
            print(f"  + Saved {destination}")
        except urllib.error.HTTPError as error:
            print(f"  x Failed: {api_error_message(error)}")
            failed.append(f"{song}, {singer}")
        except urllib.error.URLError as error:
            sys.exit(f"Can't reach the API at {api} ({error.reason}). Is main.py running?")

    print(f"\nDone: {len(songs) - len(failed)}/{len(songs)} downloaded to {folder}")
    if failed:
        print("Failed:\n  " + "\n  ".join(failed))
        sys.exit(1)


if __name__ == "__main__":
    main()
