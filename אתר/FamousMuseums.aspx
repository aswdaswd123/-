<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FamousMuseums.aspx.cs" Inherits="אתר.FamousMuseums" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>מוזיאונים מפורסמים - עולם המוזיאונים</title>
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
    <a href="log_out.aspx" style="position: fixed; top: 15px; right: 15px; background-color: #4d331e; color: #fff; text-decoration: none; padding: 8px 16px; border-radius: 5px; font-size: 14px; z-index: 1000;">התנתקות</a>
    <form id="form1" runat="server">

        <div class="site-header">
            <h1>עולם המוזיאונים</h1>
            <p>מסע אל תוך ההיסטוריה, האמנות והמדע</p>
        </div>

        <ul class="nav-menu">
            <li><a href="Home.aspx">דף בית</a></li>
            <li><a href="WhatIsMuseum.aspx">מהו מוזיאון</a></li>
            <li><a href="ArtMuseums.aspx">מוזיאוני אומנות</a></li>
            <li><a href="HistoryMuseums.aspx">מוזיאוני היסטוריה</a></li>
            <li><a href="ScienceMuseums.aspx">מדע</a></li>
            <li><a href="FamousMuseums.aspx" class="active">מפורסמים</a></li>
            <li><a href="IsraelMuseums.aspx">מוזיאונים בישראל</a></li>
            <li><a href="Importance.aspx">חשיבות המוזיאונים</a></li>
        </ul>

        <div class="page-content">
            <h2>מוזיאונים מפורסמים בעולם</h2>

            <p>
                ברחבי העולם קיימים מוזיאונים שהפכו לסמל תרבותי ותיירותי, ומושכים אליהם
                מיליוני מבקרים מדי שנה. להלן כמה מהמוזיאונים המפורסמים ביותר:
            </p>

            <div class="museum-card">
                <h4>מוזיאון הלובר - צרפת</h4>
                <p>המוזיאון הגדול והמבוקר ביותר בעולם, שוכן בארמון לשעבר בפריז ומציג את המונה ליזה.</p>
                <p><strong>מספר מבקרים משוער בשנה:</strong> כ-8 מיליון</p>
            </div>

            <div class="museum-card">
                <h4>המוזיאון הבריטי - בריטניה</h4>
                <p>מציג אוספים היסטוריים וארכיאולוגיים מכל רחבי העולם, כניסה חינם לציבור.</p>
                <p><strong>מספר מבקרים משוער בשנה:</strong> כ-6 מיליון</p>
            </div>

            <div class="museum-card">
                <h4>מוזיאון המטרופוליטן לאמנות (The Met) - ארצות הברית</h4>
                <p>אחד ממוזיאוני האמנות הגדולים בעולם, ממוקם בניו יורק ומחזיק באוסף של יותר מ-2 מיליון פריטים.</p>
                <p><strong>מספר מבקרים משוער בשנה:</strong> כ-6 מיליון</p>
            </div>

            <div class="museum-card">
                <h4>מוזיאון הרמיטאז' - רוסיה</h4>
                <p>ממוקם בסנקט פטרבורג, ומכיל אוסף עצום של אמנות והיסטוריה מתקופת הצארים.</p>
                <p><strong>מספר מבקרים משוער בשנה:</strong> כ-4 מיליון</p>
            </div>

            <h3>טבלת השוואה</h3>
            <table class="info-table">
                <tr>
                    <th>מוזיאון</th>
                    <th>מדינה</th>
                    <th>תחום עיקרי</th>
                </tr>
                <tr>
                    <td>הלובר</td>
                    <td>צרפת</td>
                    <td>אמנות</td>
                </tr>
                <tr>
                    <td>המוזיאון הבריטי</td>
                    <td>אנגליה</td>
                    <td>היסטוריה וארכיאולוגיה</td>
                </tr>
                <tr>
                    <td>המטרופוליטן (Met)</td>
                    <td>ארה"ב</td>
                    <td>אמנות</td>
                </tr>
                <tr>
                    <td>הרמיטאז'</td>
                    <td>רוסיה</td>
                    <td>אמנות והיסטוריה</td>
                </tr>
                <tr>
                    <td>הוותיקן</td>
                    <td>וותיקן</td>
                    <td>אמנות דתית ותרבות</td>
                </tr>
            </table>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
</body>
</html>