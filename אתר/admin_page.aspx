<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_page.aspx.cs" Inherits="אתר.admin_page" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ניהול - עולם המוזיאונים</title>
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

        .admin-wrapper {
            max-width: 480px;
            margin: 60px auto;
            background-color: #fffefb;
            padding: 35px 40px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .admin-wrapper h1 {
            color: #6e4527;
            border-bottom: 3px solid #d8c9b3;
            padding-bottom: 8px;
            margin-top: 0;
            text-align: center;
            font-size: 26px;
        }

        .admin-btn {
            display: block;
            width: 100%;
            padding: 14px;
            margin-top: 18px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            color: #fff;
            transition: background-color 0.2s ease-in-out;
        }

        .btn-delete {
            background-color: #a33c2c;
        }

        .btn-delete:hover {
            background-color: #822f21;
        }

        .btn-view {
            background-color: #8a5a34;
        }

        .btn-view:hover {
            background-color: #6e4527;
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
            <h2>עולם המוזיאונים</h2>
            <p>פאנל ניהול</p>
        </div>

        <div class="admin-wrapper">
            <h1>ניהול האתר</h1>

            <asp:Button ID="btnDeleteUsers" runat="server" Text="מחיקת משתמשים" CssClass="admin-btn btn-delete"
                PostBackUrl="delete_user.aspx" />

            <asp:Button ID="btnViewData" runat="server" Text="צפייה בנתונים" CssClass="admin-btn btn-view"
                PostBackUrl="view_data.aspx" />
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
</body>
</html>