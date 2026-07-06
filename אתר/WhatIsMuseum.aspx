<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WhatIsMuseum.aspx.cs" Inherits="אתר.WhatIsMuseum" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>מהו מוזיאון - עולם המוזיאונים</title>
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

        <div class="site-header">
            <h1>עולם המוזיאונים</h1>
            <p>מסע אל תוך ההיסטוריה, האמנות והמדע</p>
        </div>

        <ul class="nav-menu">
            <li><a href="Home.aspx">דף בית</a></li>
            <li><a href="WhatIsMuseum.aspx" class="active">מהו מוזיאון</a></li>
            <li><a href="ArtMuseums.aspx">מוזיאוני אומנות</a></li>
            <li><a href="HistoryMuseums.aspx">מוזיאוני היסטוריה</a></li>
            <li><a href="ScienceMuseums.aspx">מדע</a></li>
            <li><a href="FamousMuseums.aspx">מפורסמים</a></li>
            <li><a href="IsraelMuseums.aspx">מוזיאונים בישראל</a></li>
            <li><a href="Importance.aspx">חשיבות המוזיאונים</a></li>
        </ul>

        <div class="page-content">
            <h2>מהו מוזיאון?</h2>

            <p>
                מוזיאון הוא מוסד קבוע, שאינו מכוון לרווח, המשרת את החברה ואת התפתחותה.
                המוזיאון אוסף, משמר, חוקר, מתקשר ומציג לציבור את המורשת המוחשית והבלתי
                מוחשית של האנושות והסביבה, לצורכי חינוך, לימוד והנאה.
            </p>

            <h3>תפקידי המוזיאון המרכזיים</h3>
            <div class="museum-card">
                <h4>1. שימור (Conservation)</h4>
                <p>שמירה על חפצים, יצירות אמנות ומסמכים היסטוריים במצב תקין לאורך זמן, תוך שימוש בטכניקות שימור מתקדמות.</p>
            </div>

            <div class="museum-card">
                <h4>2. מחקר (Research)</h4>
                <p>חקר האוספים על ידי אוצרים ומומחים, לצורך הבנה מעמיקה יותר של ההקשר ההיסטורי, האמנותי או המדעי של המוצגים.</p>
            </div>

            <div class="museum-card">
                <h4>3. תצוגה (Exhibition)</h4>
                <p>הצגת האוספים לציבור הרחב באמצעות תערוכות קבועות וזמניות, המלוות לרוב בהסברים והדרכות.</p>
            </div>

            <div class="museum-card">
                <h4>4. חינוך (Education)</h4>
                <p>פיתוח תוכניות לימוד, סדנאות והרצאות המיועדות לבתי ספר, משפחות וקהל הרחב.</p>
            </div>

            <h3>סוגי מוזיאונים נפוצים</h3>
            <ul>
                <li>מוזיאוני אמנות</li>
                <li>מוזיאוני היסטוריה וארכיאולוגיה</li>
                <li>מוזיאוני מדע וטכנולוגיה</li>
                <li>מוזיאוני טבע ואבולוציה</li>
                <li>מוזיאונים אתנוגרפיים ותרבותיים</li>
                <li>מוזיאונים לזכר אירועים היסטוריים (כגון יד ושם)</li>
            </ul>

            <div class="fact-box">
                הגדרת המוזיאון מתעדכנת מעת לעת על ידי הארגון הבינלאומי למוזיאונים (ICOM),
                בהתאם לשינויים חברתיים ותרבותיים.
            </div>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
    <a href="log_out.aspx" style="position: fixed; top: 15px; right: 15px; background-color: #4d331e; color: #fff; text-decoration: none; padding: 8px 16px; border-radius: 5px; font-size: 14px; z-index: 1000;">התנתקות</a>
</body>
</html>