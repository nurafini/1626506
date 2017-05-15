using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBeautyWebsite
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string productID = Request.QueryString["ID"];
            string filename = productID + ".jpg";
            Productimage.ImageUrl = "~/images" + filename;
            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["db_1626506_co5027_asgConnectionString"].ConnectionString;
                using (var conn = new SqlConnection(connStr))
                using (var cmd = conn.CreateCommand())
                {
                    conn.Open();
                    cmd.CommandText = "SELECT Name From dbo.Products WHERE ID = " + productID;

                    string altName = (string)cmd.ExecuteScalar();
                    cmd.ExecuteNonQuery();
                    Productimage.AlternateText = altName;
                }
            }
            
            
    catch (Exception a)
            {
                Response.Write(a.Message);
            }

            
            string searchTerm = Request.QueryString["ID"];
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

    }
}