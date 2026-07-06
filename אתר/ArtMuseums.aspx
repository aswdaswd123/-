<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArtMuseums.aspx.cs" Inherits="אתר.ArtMuseums" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>מוזיאוני אומנות - עולם המוזיאונים</title>
    <style type="text/css">
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            direction: rtl;
            text-align: right;
            background-color: #f4f1ea;
            color: #2b2b2b;
        }

        .site-header {
            background-color: #3b2b20;
            color: #f4f1ea;
            padding: 20px 40px;
            text-align: center;
        }

        .site-header h1 {
            margin: 0;
            font-size: 32px;
            letter-spacing: 1px;
        }

        .site-header p {
            margin: 5px 0 0;
            font-size: 14px;
            color: #d8c9b3;
        }

        .nav-menu {
            background-color: #8a5a34;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .nav-menu li {
            margin: 0;
        }

        .nav-menu a {
            display: block;
            padding: 14px 18px;
            color: #fff;
            text-decoration: none;
            font-size: 15px;
            transition: background-color 0.2s ease-in-out;
        }

        .nav-menu a:hover {
            background-color: #6e4527;
        }

        .nav-menu a.active {
            background-color: #4d331e;
            font-weight: bold;
        }

        .page-content {
            max-width: 1000px;
            margin: 30px auto;
            background-color: #fffefb;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            line-height: 1.7;
        }

        .page-content h2 {
            color: #6e4527;
            border-bottom: 3px solid #d8c9b3;
            padding-bottom: 8px;
        }

        .page-content h3 {
            color: #8a5a34;
        }

        .museum-card {
            background-color: #f9f6f0;
            border: 1px solid #e0d5c0;
            border-radius: 6px;
            padding: 15px 20px;
            margin-bottom: 15px;
        }

        .museum-card h4 {
            margin-top: 0;
            color: #4d331e;
        }

        table.info-table {
            width: 100%;
            border-collapse: collapse;
            margin: 15px 0;
        }

        table.info-table th, table.info-table td {
            border: 1px solid #d8c9b3;
            padding: 10px;
            text-align: right;
        }

        table.info-table th {
            background-color: #8a5a34;
            color: white;
        }

        table.info-table tr:nth-child(even) {
            background-color: #f4efe4;
        }

        .site-footer {
            text-align: center;
            padding: 20px;
            background-color: #3b2b20;
            color: #d8c9b3;
            font-size: 13px;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="site-header">
            <h1>עולם המוזיאונים</h1>
            <p>מסע אל תוך ההיסטוריה, האמנות והמדע</p>
        </div>

        <ul class="nav-menu">
            <li><a href="Home.aspx">דף בית</a></li>
            <li><a href="WhatIsMuseum.aspx">מהו מוזיאון</a></li>
            <li><a href="ArtMuseums.aspx" class="active">מוזיאוני אומנות</a></li>
            <li><a href="HistoryMuseums.aspx">מוזיאוני היסטוריה</a></li>
            <li><a href="ScienceMuseums.aspx">מדע</a></li>
            <li><a href="FamousMuseums.aspx">מפורסמים</a></li>
            <li><a href="IsraelMuseums.aspx">מוזיאונים בישראל</a></li>
            <li><a href="Importance.aspx">חשיבות המוזיאונים</a></li>
        </ul>

        <div class="page-content">
            <h2>מוזיאוני אומנות</h2>

            <p>
                מוזיאוני אמנות הם מוסדות המוקדשים לאיסוף, שימור והצגה של יצירות אמנות
                חזותית - ציור, פיסול, צילום, גרפיקה ואמנות עכשווית. מוזיאונים אלו מאפשרים
                לציבור להתוודע ליצירות מופת מכל התקופות ומכל רחבי העולם, וללמוד על תולדות
                האמנות והתפתחותה.
            </p>

            <h3>דוגמאות למוזיאוני אמנות מוכרים</h3>

            <div class="museum-card">
                <h4>מוזיאון הלובר, פריז</h4>
                <p>המוזיאון הגדול והמבוקר ביותר בעולם, שוכן בארמון לשעבר בפריז ומציג את המונה ליזה.</p>
            </div>

            <div class="museum-card">
                <h4>מוזיאון ואן גוך, אמסטרדם</h4>
                <p>מציג את אוסף היצירות הגדול בעולם של הצייר ההולנדי וינסנט ואן גוך.</p>
            </div>

            <div class="museum-card">
                <h4>מוזיאון האופיצי, פירנצה</h4>
                <p>נחשב לאחד ממוזיאוני האמנות החשובים בעולם לתקופת הרנסאנס.</p>
            </div>

            <div class="museum-card">
                <h4>המוזיאון לאמנות מודרנית (MoMA), ניו יורק</h4>
                <p>מתמחה באמנות מודרנית ועכשווית ומציג יצירות של אמנים מהמאה ה-20 ואילך.</p>
            </div>

            <h3>זרמים מרכזיים באמנות המוצגים במוזיאונים</h3>
            <table class="info-table">
                <tr>
                    <th>זרם אמנותי</th>
                    <th>תקופה</th>
                    <th>דוגמה בולטת</th>
                </tr>
                <tr>
                    <td>רנסאנס</td>
                    <td>המאות ה-14–17</td>
                    <td>המונה ליזה, לאונרדו דה וינצ'י</td>
                </tr>
                <tr>
                    <td>אימפרסיוניזם</td>
                    <td>המאה ה-19</td>
                    <td>ליל כוכבים, ואן גוך</td>
                </tr>
                <tr>
                    <td>קוביזם</td>
                    <td>תחילת המאה ה-20</td>
                    <td>יצירותיו של פבלו פיקאסו</td>
                </tr>
                <tr>
                    <td>אמנות מודרנית ועכשווית</td>
                    <td>מהמאה ה-20 ואילך</td>
                    <td>יצירות במוזיאון MoMA</td>
                </tr>
            </table>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
</body>
</html>