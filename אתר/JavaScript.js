function check() {
    var username = document.getElementById("u").value;
    if (username == "") {
        window.alert("enter username");
        return false;
    }

    var password = document.getElementById("p").value;
    if (password.length < 6 || password.length > 8) {
        window.alert("password must be 6-8 characters");
        return false;
    }
    var gmail = document.getElementById("g").value;
    if (gmail == "") {
        window.alert("enter gmail");
        return false;
    }

    return true;
}