using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

namespace אתר
{
    public partial class login_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String dbpath = this.MapPath("App_Data\\Database1.mdf");
            String con = String.Format(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={0}", dbpath);
            SqlConnection conn = new SqlConnection(con);
            if (Page.IsPostBack)
            {
                String username = Request["u"];
                String pass = Request["p"];
                String sql = "SELECT* FROM admins WHERE username ='" + username + "' AND pass ='" + pass + "';";
                conn.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(sql, conn);
                dataAdapter.Fill(ds);
                conn.Close();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["admin"] = username;
                    Response.Redirect("admin_page.aspx");

                }
                Response.Write("אחד מן השם משתמש או סיסמא שהזנת לא נכונים");
            }
        }
    }
}