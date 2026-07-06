<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScienceMuseums.aspx.cs" Inherits="אתר.ScienceMuseum" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>מוזיאוני מדע - עולם המוזיאונים</title>
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
            <li><a href="Home.aspx">דף בית</a></li>
            <li><a href="WhatIsMuseum.aspx">מהו מוזיאון</a></li>
            <li><a href="ArtMuseums.aspx">מוזיאוני אומנות</a></li>
            <li><a href="HistoryMuseums.aspx">מוזיאוני היסטוריה</a></li>
            <li><a href="ScienceMuseums.aspx" class="active">מדע</a></li>
            <li><a href="FamousMuseums.aspx">מפורסמים</a></li>
            <li><a href="IsraelMuseums.aspx">מוזיאונים בישראל</a></li>
            <li><a href="Importance.aspx">חשיבות המוזיאונים</a></li>
        </ul>

        <div class="page-content">
            <h2>מוזיאוני מדע וטכנולוגיה</h2>

            <p>
                מוזיאוני מדע מיועדים להנגיש לציבור הרחב, ובעיקר לילדים ובני נוער, עולמות
                תוכן מדעיים וטכנולוגיים בדרך חווייתית ואינטראקטיבית. במקום להסתכל על
                תצוגה מרחוק, המבקרים מוזמנים לגעת, להפעיל ולהתנסות במו ידיהם בניסויים
                ותופעות פיזיקליות, ביולוגיות וטכנולוגיות.
            </p>

            <h3>תחומים נפוצים במוזיאוני מדע</h3>
            <div class="museum-card">
                <h4>פיזיקה ומכניקה</h4>
                <p>תערוכות המדגימות כוחות, תנועה, חשמל ומגנטיות באמצעות ניסויים חיים.</p>
            </div>
            <div class="museum-card">
                <h4>חלל ואסטרונומיה</h4>
                <p>דגמי חלליות, פלנטריום ותערוכות על מערכת השמש והיקום.</p>
            </div>
            <div class="museum-card">
                <h4>ביולוגיה וגוף האדם</h4>
                <p>תערוכות על גוף האדם, מערכות איברים ומגוון ביולוגי.</p>
            </div>
            <div class="museum-card">
                <h4>טכנולוגיה ומחשבים</h4>
                <p>תערוכות רובוטיקה, בינה מלאכותית ותקשורת מודרנית.</p>
            </div>

            <h3>דוגמאות למוזיאוני מדע מוכרים</h3>
            <div class="museum-card">
                <h4>המכון הסמיתסוני לחלל ותעופה, וושינגטון</h4>
                <p>מציג טילים, חלליות ומטוסים היסטוריים, כולל דגם של הנחתת אפולו 11.</p>
            </div>
            <div class="museum-card">
                <h4>מוזיאון המדע, ירושלים (בלומפילד)</h4>
                <p>מוזיאון אינטראקטיבי המזמין את המבקרים להתנסות במאות תערוכות מדעיות.</p>
            </div>
            <div class="museum-card">
                <h4>Cité des Sciences, פריז</h4>
                <p>אחד ממוזיאוני המדע הגדולים באירופה, עם פלנטריום ותערוכות טכנולוגיה מתקדמות.</p>
            </div>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
</body>
</html>