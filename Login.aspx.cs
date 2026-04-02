using System;

namespace Assignment_5_6
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated && Session["Role"] != null) //if someone's already logged in, take them to their respective page
            {
                if (Session["Role"].ToString() == "Member")
                    Response.Redirect("Member.aspx");
                else if (Session["Role"].ToString() == "Staff")
                    Response.Redirect("Staff.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string role = ddlRole.SelectedValue;

            if (role == "Member")
            {
                if (XmlDataStore.ValidateMember(username, password))
                {
                    AuthHelper.SignInMember(username);
                    Response.Redirect("Member.aspx");
                }
                else
                {
                    lblMessage.Text = "Invalid member credentials.";
                }
            }
            else
            {
                if (XmlDataStore.ValidateStaff(username, password))
                {
                    AuthHelper.SignInStaff(username);
                    Response.Redirect("Staff.aspx");
                }
                else
                {
                    lblMessage.Text = "Invalid staff credentials.";
                }
            }
        }
    }
}