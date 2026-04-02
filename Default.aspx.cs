using System;
using SecurityLibrary;

namespace Assignment_5_6
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnHash_Click(object sender, EventArgs e)
        {
            lblHashOutput.Text = "Hash: " + PasswordHasher.HashPassword(txtHashInput.Text.Trim());
        }

        protected void btnTryPrice_Click(object sender, EventArgs e)
        {
            decimal price = AnalyticsHelper.GetPriceForService(ddlServiceTryIt.SelectedValue);
            lblTryPrice.Text = "Price for " + ddlServiceTryIt.SelectedValue + ": $" + price;
        }
    }
}