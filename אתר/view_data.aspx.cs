using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace אתר
{
    public partial class view_data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login_admin.aspx");
                return;
            }

            String dbpath = this.MapPath("App_Data\\Database1.mdf");
            String con = String.Format(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={0}", dbpath);
            String sql = "SELECT * FROM users;";

            DataSet ds = new DataSet();

            using (SqlConnection conn = new SqlConnection(con))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds);
            }

            StringBuilder sb = new StringBuilder();

            sb.Append(@"
                <!DOCTYPE html>
                <html xmlns='http://www.w3.org/1999/xhtml'>
                <head>
                    <title>צפייה בנתונים - עולם המוזיאונים</title>
                    <style type='text/css'>
                        * { box-sizing: border-box; }

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

                        .data-wrapper {
                            max-width: 900px;
                            margin: 40px auto;
                            background-color: #fffefb;
                            padding: 30px 40px;
                            border-radius: 8px;
                            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                        }

                        .data-wrapper h1 {
                            color: #6e4527;
                            border-bottom: 3px solid #d8c9b3;
                            padding-bottom: 8px;
                            margin-top: 0;
                            text-align: center;
                        }

                        table.info-table {
                            width: 100%;
                            border-collapse: collapse;
                            margin-top: 20px;
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
                            margin-top: 20px;
                            background-color: transparent;
                            color: #6e4527;
                            border: 2px solid #8a5a34;
                            border-radius: 5px;
                            font-size: 15px;
                            text-align: center;
                            text-decoration: none;
                        }

                        .btn-back:hover {
                            background-color: #8a5a34;
                            color: #fff;
                        }
                    </style>
                </head>
                <body>
                    <div class='site-header'>
                        <h2>עולם המוזיאונים</h2>
                    </div>
                    <div class='data-wrapper'>
                        <h1>נתוני משתמשים</h1>
            ");

            sb.Append("<table class='info-table'>");

            sb.Append("<tr>");
            foreach (DataColumn col in ds.Tables[0].Columns)
            {
                sb.Append("<th>" + col.ColumnName + "</th>");
            }
            sb.Append("</tr>");

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                sb.Append("<tr>");
                foreach (var item in row.ItemArray)
                {
                    sb.Append("<td>" + item.ToString() + "</td>");
                }
                sb.Append("</tr>");
            }

            sb.Append("</table>");

            sb.Append(@"
                        <a href='admin_page.aspx' class='btn-back'>חזרה לניהול</a>
                    </div>
                </body>
                </html>
            ");

            Response.Write(sb.ToString());
        }
    }
}