using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T.Silk_Scarves.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductId = Request.QueryString["Id"];
            string filename = ProductId + ".jpg";
            
            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ProductId = Request.QueryString["Id"];
            string filename = ProductId + ".jpg";
            string savelocation = Server.MapPath("~/ProductImages/" + filename);

            FileUploadImage.SaveAs(savelocation);
        }
    }
}