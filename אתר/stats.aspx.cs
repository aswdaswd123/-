using System;
using System.Data;
using System.Data.SqlClient;

namespace אתר
{
    public partial class stats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login_admin.aspx");
                return;
            }

            if (!Page.IsPostBack)
            {
                LoadStats("all", null, null);
            }
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            String gender = ddlGender.SelectedValue;

            int? minAge = null;
            int? maxAge = null;

            int parsedMin;
            if (int.TryParse(txtMinAge.Text, out parsedMin))
            {
                minAge = parsedMin;
            }

            int parsedMax;
            if (int.TryParse(txtMaxAge.Text, out parsedMax))
            {
                maxAge = parsedMax;
            }

            LoadStats(gender, minAge, maxAge);
        }

        private void LoadStats(String gender, int? minAge, int? maxAge)
        {
            String dbpath = this.MapPath("App_Data\\Database1.mdf");
            String con = String.Format(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={0}", dbpath);

            String sql = "SELECT * FROM users WHERE 1=1";

            if (gender == "male")
            {
                sql += " AND gender = 'זכר'";
            }
            else if (gender == "female")
            {
                sql += " AND gender = 'נקבה'";
            }

            if (minAge.HasValue)
            {
                sql += " AND age >= " + minAge.Value;
            }

            if (maxAge.HasValue)
            {
                sql += " AND age <= " + maxAge.Value;
            }

            DataSet ds = new DataSet();

            using (SqlConnection conn = new SqlConnection(con))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds);
            }

            DataTable table = ds.Tables[0];

            gvUsers.DataSource = table;
            gvUsers.DataBind();

            int total = table.Rows.Count;
            int maleCount = 0;
            int femaleCount = 0;
            double ageSum = 0;
            int ageCount = 0;

            foreach (DataRow row in table.Rows)
            {
                if (table.Columns.Contains("gender") && row["gender"] != DBNull.Value)
                {
                    String g = row["gender"].ToString();
                    if (g == "זכר") maleCount++;
                    else if (g == "נקבה") femaleCount++;
                }

                if (table.Columns.Contains("age") && row["age"] != DBNull.Value)
                {
                    double ageVal;
                    if (double.TryParse(row["age"].ToString(), out ageVal))
                    {
                        ageSum += ageVal;
                        ageCount++;
                    }
                }
            }

            lblTotalCount.Text = total.ToString();
            lblMaleCount.Text = maleCount.ToString();
            lblFemaleCount.Text = femaleCount.ToString();
            lblAvgAge.Text = ageCount > 0 ? Math.Round(ageSum / ageCount, 1).ToString() : "-";
        }
    }
}