<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stats.aspx.cs" Inherits="אתר.stats" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>סטטיסטיקות - עולם המוזיאונים</title>
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

        .page-wrapper {
            max-width: 900px;
            margin: 40px auto;
            background-color: #fffefb;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .page-wrapper h1 {
            color: #6e4527;
            border-bottom: 3px solid #d8c9b3;
            padding-bottom: 8px;
            margin-top: 0;
            text-align: center;
        }

        .filter-box {
            background-color: #f9f6f0;
            border: 1px solid #e0d5c0;
            border-radius: 6px;
            padding: 20px;
            margin-bottom: 25px;
        }

        .filter-row {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            align-items: flex-end;
        }

        .filter-item {
            display: flex;
            flex-direction: column;
            min-width: 140px;
        }

        .filter-item label {
            font-weight: bold;
            color: #4d331e;
            margin-bottom: 6px;
            font-size: 14px;
        }

        .filter-item input[type="text"],
        .filter-item select {
            padding: 8px 10px;
            border: 1px solid #d8c9b3;
            border-radius: 5px;
            font-size: 14px;
            font-family: inherit;
            background-color: #faf8f3;
        }

        .btn-filter {
            padding: 10px 20px;
            background-color: #8a5a34;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            height: 38px;
        }

        .btn-filter:hover {
            background-color: #6e4527;
        }

        .stats-summary {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
            margin-bottom: 25px;
        }

        .stat-card {
            flex: 1;
            min-width: 140px;
            background-color: #f0e6d6;
            border-right: 5px solid #8a5a34;
            padding: 15px 20px;
            border-radius: 4px;
        }

        .stat-card .stat-label {
            font-size: 13px;
            color: #6e4527;
            margin-bottom: 5px;
        }

        .stat-card .stat-value {
            font-size: 24px;
            font-weight: bold;
            color: #4d331e;
        }

        table.info-table {
            width: 100%;
            border-collapse: collapse;
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

        .btn-back {
            display: block;
            width: 100%;
            padding: 12px;
            margin-top: 25px;
            background-color: transparent;
            color: #6e4527;
            border: 2px solid #8a5a34;
            border-radius: 5px;
            font-size: 15px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
        }

        .btn-back:hover {
            background-color: #8a5a34;
            color: #fff;
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

        <div class="page-wrapper">
            <h1>סטטיסטיקות משתמשים</h1>

            <div class="filter-box">
                <div class="filter-row">
                    <div class="filter-item">
                        <label for="ddlGender">מגדר</label>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Value="all" Text="הכל" />
                            <asp:ListItem Value="male" Text="זכר" />
                            <asp:ListItem Value="female" Text="נקבה" />
                        </asp:DropDownList>
                    </div>

                    <div class="filter-item">
                        <label for="txtMinAge">גיל מינימום</label>
                        <asp:TextBox ID="txtMinAge" runat="server"></asp:TextBox>
                    </div>

                    <div class="filter-item">
                        <label for="txtMaxAge">גיל מקסימום</label>
                        <asp:TextBox ID="txtMaxAge" runat="server"></asp:TextBox>
                    </div>

                    <div class="filter-item">
                        <asp:Button ID="btnFilter" runat="server" Text="הצג נתונים" CssClass="btn-filter" OnClick="btnFilter_Click" />
                    </div>
                </div>
            </div>

            <div class="stats-summary">
                <div class="stat-card">
                    <div class="stat-label">סה"כ משתמשים</div>
                    <div class="stat-value"><asp:Label ID="lblTotalCount" runat="server" Text="0"></asp:Label></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">גיל ממוצע</div>
                    <div class="stat-value"><asp:Label ID="lblAvgAge" runat="server" Text="0"></asp:Label></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">זכרים</div>
                    <div class="stat-value"><asp:Label ID="lblMaleCount" runat="server" Text="0"></asp:Label></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">נקבות</div>
                    <div class="stat-value"><asp:Label ID="lblFemaleCount" runat="server" Text="0"></asp:Label></div>
                </div>
            </div>

            <asp:GridView ID="gvUsers" runat="server" CssClass="info-table" AutoGenerateColumns="true"
                EmptyDataText="לא נמצאו משתמשים התואמים את הסינון">
            </asp:GridView>

            <a href="admin_page.aspx" class="btn-back">חזרה לניהול</a>
        </div>

        <div class="site-footer">
            &copy; 2026 אתר מוזיאונים - פרויקט תבא במדעי המחשב
        </div>

    </form>
</body>
</html>