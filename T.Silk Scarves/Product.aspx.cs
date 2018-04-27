using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T.Silk_Scarves
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPurchase_Click1(object sender, EventArgs e)
        {
            decimal postagePackagingCost = 3.95m;
            decimal Price = 10.00m;
            int Quantity = int.Parse(DDLQuantity.SelectedValue);
            decimal subTotal = (Quantity * Price);
            decimal total = subTotal + postagePackagingCost;
        }
    }
}