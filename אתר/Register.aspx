<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="אתר.Register" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>הרשמה - עולם המוזיאונים</title>
    <script src="JavaScript.js"></script>
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

        .site-header h2 {
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

        .form-wrapper {
            max-width: 480px;
            margin: 50px auto;
            background-color: #fffefb;
            padding: 35px 40px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .form-wrapper h1 {
            color: #6e4527;
            border-bottom: 3px solid #d8c9b3;
            padding-bottom: 8px;
            margin-top: 0;
            text-align: center;
            font-size: 26px;
        }

        table.reg-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table.reg-table td {
            padding: 10px 0;
        }

        table.reg-table td:first-child {
            width: 130px;
            font-weight: bold;
            color: #4d331e;
        }

        table.reg-table input[type="text"],
        table.reg-table input[type="password"] {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #d8c9b3;
            border-radius: 5px;
            font-size: 14px;
            font-family: inherit;
            background-color: #faf8f3;
        }

        table.reg-table input:focus {
            outline: none;
            border-color: #8a5a34;
            background-color: #fff;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #8a5a34;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.2s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #6e4527;
        }

        /* Login Links Styling */
        .form-links {
            margin-top: 25px;
            text-align: center;
            font-size: 14px;
        }

        .form-link {
            color: #8a5a34;
            text-decoration: none;
            transition: color 0.2s ease;
        }

        .form-link:hover {
            color: #6e4527;
            text-decoration: underline;
        }

        .admin-link {
            color: #7a6b58;
            font-weight: 500;
        }

        .admin-link:hover {
            color: #4d331e;
        }

        .divider {
            margin: 0 10px;
            color: #d8c9b3;
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
    <form id="form1" runat="server" onsubmit="return check();">

        <div class="site-header">
            <h2>עולם המוזיאונים</h2>
            <p>מסע אל תוך ההיסטוריה, האמנות והמדע</p>
        </div>

        <div class="form-wrapper">
            <h1>הרשמה</h1>
            <table class="reg-table">
                <tr>
                    <td>שם משתמש</td>
                    <td>
                        <input type="text" id="u" name="u" />
                    </td>
                </tr>
                 <tr>
                    <td>סיסמה</td>
                    <td>
                        <input type="password" id="p" name="p" />
                    </td>
                </tr>
                
                <tr>
                    <td>מגדר</td>
                    <td>
                        <input type="radio" id="male" name="gender" value="male"/>male
                        <input type="radio" id="female" name="gender" value="female"/>female
                    </td>
                </tr>
                 <tr>
                    <td>דואר אלקטרוני</td>
                    <td>
                        <input type="text" id="g" name="g" />
                    </td>
                </tr>
                <tr>
                    <td>גיל</td>
                    <td>
                        <input type="number" id="a" name="a" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="השלם הרשמה" /> 
                    </td>
                </tr>
                
            </table>

            <div class="form-links">
                <a href="login_user.aspx" class="form-link">כבר יש לך חשבון? להתחברות</a>
                <span class="divider">|</span>
                <a href="login_admin.aspx" class="form-link admin-link">כניסת מנהל מערכת</a>
            </div>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תב"מ במדעי המחשב
        </div>

    </form>
</body>
</html>