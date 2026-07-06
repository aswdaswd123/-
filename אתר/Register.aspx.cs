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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String dbpath = this.MapPath("App_Data\\Database1.mdf");
            String con = String.Format(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={0}", dbpath);
            SqlConnection conn = new SqlConnection(con);
            if (Page.IsPostBack)
            {
                String username = Request["u"];
                String gender = Request["gender"];
                String email = Request["g"];
                String pass = Request["p"];

                String sql1 = "SELECT* FROM users WHERE username ='" + username + "' AND pass ='" + pass + "';";
                DataSet ds = new DataSet();
                conn.Open();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(sql1, conn);
                dataAdapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Write("ERROR: משתמש עם אותם הנתונים קיים כבר במערכת!");
                }
                else
                {
                    String sql = "INSERT INTO users (username, pass, gender, email) VALUES ('" + username + "', '" + pass + "', '" + gender + "','" + email + "');";
                    SqlCommand com = new SqlCommand(sql, conn);
                    com.ExecuteNonQuery();
                    conn.Close();
                    Session["user"] = username;
                    Response.Redirect("Home.aspx");
                }
            }

        }




    }

}



        

