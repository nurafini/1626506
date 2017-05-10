using System;
using System.Collections.Generic;
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
            string searchTerm = Request.QueryString["ID"];
        }
    }
}