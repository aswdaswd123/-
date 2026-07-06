<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="אתר.Home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>עולם המוזיאונים - דף בית</title>
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

        .fact-box {
            background-color: #f0e6d6;
            border-right: 5px solid #8a5a34;
            padding: 15px 20px;
            margin: 20px 0;
            border-radius: 4px;
            font-style: italic;
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
        <a href="log_out.aspx" style="position: fixed; top: 15px; right: 15px; background-color: #4d331e; color: #fff; text-decoration: none; padding: 8px 16px; border-radius: 5px; font-size: 14px; z-index: 1000;">התנתקות</a>
        <div class="site-header">
            <h1>עולם המוזיאונים</h1>
            <p>מסע אל תוך ההיסטוריה, האמנות והמדע</p>
        </div>

        <ul class="nav-menu">
            <li><a href="Home.aspx" class="active">דף בית</a></li>
            <li><a href="WhatIsMuseum.aspx">מהו מוזיאון</a></li>
            <li><a href="ArtMuseums.aspx">מוזיאוני אומנות</a></li>
            <li><a href="HistoryMuseums.aspx">מוזיאוני היסטוריה</a></li>
            <li><a href="ScienceMuseums.aspx">מדע</a></li>
            <li><a href="FamousMuseums.aspx">מפורסמים</a></li>
            <li><a href="IsraelMuseums.aspx">מוזיאונים בישראל</a></li>
            <li><a href="Importance.aspx">חשיבות המוזיאונים</a></li>
        </ul>

        <div class="page-content">
            <h2>ברוכים הבאים לאתר עולם המוזיאונים</h2>

            <p>
                מוזיאונים הם חלונות אל העבר, ההווה והעתיד. הם משמרים עבורנו יצירות אמנות,
                תגליות מדעיות, סיפורים היסטוריים וזכרונות תרבותיים שאסור לנו לשכוח.
                באתר זה תוכלו למצוא מידע על סוגי המוזיאונים השונים בעולם, על מוזיאונים
                מפורסמים, על מוזיאונים בישראל, ועל החשיבות הרבה שיש למוזיאונים בחיינו.
            </p>

            <div class="fact-box">
                <strong>ידעתם ש...?</strong><br />
                מוזיאון הלובר בפריז הוא המוזיאון המבוקר ביותר בעולם, עם מיליוני מבקרים בשנה.
            </div>

            <h3>מה תמצאו באתר?</h3>
            <table class="info-table">
                <tr>
                    <th>עמוד</th>
                    <th>תוכן</th>
                </tr>
                <tr>
                    <td>מהו מוזיאון</td>
                    <td>הגדרה, מטרות ותפקידי המוזיאון המודרני</td>
                </tr>
                <tr>
                    <td>מוזיאוני אומנות</td>
                    <td>מוזיאונים המציגים ציור, פיסול ואמנות חזותית</td>
                </tr>
                <tr>
                    <td>מוזיאוני היסטוריה</td>
                    <td>מוזיאונים המשמרים אירועים ותקופות מן העבר</td>
                </tr>
                <tr>
                    <td>מדע</td>
                    <td>מוזיאוני מדע וטכנולוגיה אינטראקטיביים</td>
                </tr>
                <tr>
                    <td>מפורסמים</td>
                    <td>המוזיאונים המפורסמים והמבוקרים ביותר בעולם</td>
                </tr>
                <tr>
                    <td>מוזיאונים בישראל</td>
                    <td>סקירת מוזיאונים מובילים בישראל</td>
                </tr>
                <tr>
                    <td>חשיבות המוזיאונים</td>
                    <td>מדוע מוזיאונים חשובים לחברה ולתרבות</td>
                </tr>
            </table>

            <p>גלשו בין הדפים באמצעות התפריט למעלה, וצללו אל עולם המוזיאונים המרתק!</p>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
</body>
</html>