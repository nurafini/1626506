using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBeautyWebsite
{
    public partial class ProductImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productID = Request.QueryString["ID"];
            string filename = productID + ".jpg";
            Uploadedimage.ImageUrl = "~/images" + filename;
        }

        protected void BtnUploadImg_Click(object sender, EventArgs e)
        {
       
            //(Andrew Muncey, 2013)
            string productID = Request.QueryString["ID"];
            string filename = productID + ".jpg";
            string saveLocation = Server.MapPath("~/images" + filename);
            string imgalt = altTextBox.Text;
            FileUploadImg.SaveAs(saveLocation);
        }
    }
}