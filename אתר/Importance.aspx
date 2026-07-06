<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Importance.aspx.cs" Inherits="אתר.Importance" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>חשיבות המוזיאונים - עולם המוזיאונים</title>
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
            <li><a href="ScienceMuseums.aspx">מדע</a></li>
            <li><a href="FamousMuseums.aspx">מפורסמים</a></li>
            <li><a href="IsraelMuseums.aspx">מוזיאונים בישראל</a></li>
            <li><a href="Importance.aspx" class="active">חשיבות המוזיאונים</a></li>
        </ul>

        <div class="page-content">
            <h2>חשיבות המוזיאונים בחברה</h2>

            <p>
                מוזיאונים אינם רק מבנים המשמרים חפצים ישנים - הם ממלאים תפקיד מרכזי
                בשימור הזהות התרבותית, בחינוך הדורות הבאים ובחיזוק הקשר בין העבר, ההווה
                והעתיד.
            </p>

            <h3>סיבות מרכזיות לחשיבות המוזיאונים</h3>

            <div class="museum-card">
                <h4>שימור מורשת ותרבות</h4>
                <p>מוזיאונים שומרים על פריטים, מסמכים ויצירות שאחרת היו עלולים להיעלם או להיהרס, ומאפשרים לדורות הבאים להכיר את עברם.</p>
            </div>

            <div class="museum-card">
                <h4>חינוך והעשרה</h4>
                <p>מוזיאונים מציעים חוויית למידה בלתי אמצעית, המשלימה את מערכת החינוך הפורמלית ומעודדת סקרנות ולמידה עצמאית.</p>
            </div>

            <div class="museum-card">
                <h4>חיזוק זהות לאומית וקהילתית</h4>
                <p>מוזיאונים היסטוריים ולאומיים מחזקים את תחושת השייכות והזהות של הפרט בתוך החברה בה הוא חי.</p>
            </div>

            <div class="museum-card">
                <h4>קידום סובלנות והבנה בין-תרבותית</h4>
                <p>חשיפה לתרבויות ולסיפורים שונים מסייעת לפתח אמפתיה, סובלנות והבנה כלפי קבוצות אחרות בחברה.</p>
            </div>

            <div class="museum-card">
                <h4>תיירות וכלכלה</h4>
                <p>מוזיאונים מפורסמים מושכים תיירים רבים ותורמים משמעותית לכלכלה המקומית והלאומית.</p>
            </div>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
</body>
</html>