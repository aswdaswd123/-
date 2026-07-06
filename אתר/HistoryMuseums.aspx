<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistoryMuseums.aspx.cs" Inherits="אתר.HistoryMuseum" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>מוזיאוני היסטוריה - עולם המוזיאונים</title>
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
            <li><a href="HistoryMuseums.aspx" class="active">מוזיאוני היסטוריה</a></li>
            <li><a href="ScienceMuseums.aspx">מדע</a></li>
            <li><a href="FamousMuseums.aspx">מפורסמים</a></li>
            <li><a href="IsraelMuseums.aspx">מוזיאונים בישראל</a></li>
            <li><a href="Importance.aspx">חשיבות המוזיאונים</a></li>
        </ul>

        <div class="page-content">
            <h2>מוזיאוני היסטוריה</h2>

            <p>
                מוזיאוני היסטוריה מוקדשים לשימור ותיעוד אירועים, תקופות ודמויות מן העבר.
                מוזיאונים אלו כוללים תערוכות ארכיאולוגיות, אתרים היסטוריים משוחזרים,
                מסמכים עתיקים וכלי נשק, ומטרתם להנחיל לציבור הבנה עמוקה יותר של האופן שבו
                עוצבה החברה האנושית לאורך הדורות.
            </p>

            <h3>תקופות היסטוריות מרכזיות</h3>

            <div class="museum-card">
                <h4>העת העתיקה</h4>
                <p>כוללת את תרבויות מצרים, יוון ורומא, ומוצגת במוזיאונים רבים באמצעות ממצאים ארכיאולוגיים.</p>
            </div>

            <div class="museum-card">
                <h4>ימי הביניים</h4>
                <p>מיוצגים במוזיאונים באמצעות שריון, כלי נשק, כתבי יד מאוירים ופריטי דת.</p>
            </div>

            <div class="museum-card">
                <h4>העת החדשה</h4>
                <p>כוללת את תקופת המהפכה התעשייתית וגילויי הימאים, ומוצגת באמצעות מפות, מכונות ומסמכים.</p>
            </div>

            <div class="museum-card">
                <h4>המאה ה-20</h4>
                <p>כוללת את שתי מלחמות העולם והשואה, ומוצגת במוזיאונים רבים ברחבי העולם ובישראל.</p>
            </div>

            <h3>דוגמאות למוזיאוני היסטוריה מוכרים</h3>
            <div class="museum-card">
                <h4>המוזיאון הבריטי, לונדון</h4>
                <p>מציג אוספים מכל רחבי העולם, כולל אבן רוזטה ופסלי הפרתנון.</p>
            </div>
            <div class="museum-card">
                <h4>יד ושם, ירושלים</h4>
                <p>מוזיאון ומרכז מחקר המנציח את זכר השואה ושישה מיליון היהודים שנספו בה.</p>
            </div>
            <div class="museum-card">
                <h4>המוזיאון הלאומי לאנתרופולוגיה, מקסיקו סיטי</h4>
                <p>מציג את תרבויות המאיה, האצטקים ותושבי מקסיקו הקדומים.</p>
            </div>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
</body>
</html>