using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
namespace אתר
{
    public partial class delete_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null) { Response.Redirect("login_admin.aspx"); }
            else
            {
                String dbpath = this.MapPath("App_Data\\Database1.mdf");
                String con = String.Format(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={0}", dbpath);
                SqlConnection conn = new SqlConnection(con);
                String USERNAME = Request["u"];
                String PASS = Request["P"];
                String sql = "DELETE FROM users WHERE username='" + USERNAME + "' AND pass='" + PASS + "';";
                conn.Open();
                SqlCommand com = new SqlCommand(sql, conn);
                com.ExecuteNonQuery();
                Response.Write("<div style='text-align:center;'>Deleted user: " + USERNAME + "</div>");
            }
        }
    }
}