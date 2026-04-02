using System;

namespace Assignment_5_6
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AuthHelper.SignOut();
        }
    }
}