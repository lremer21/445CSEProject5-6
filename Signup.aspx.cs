using System;
using SecurityLibrary;

namespace Assignment_5_6
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            //retrieve username and password
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                lblMessage.Text = "Username and password are required.";
                return;
            }

            if (!Captcha1.IsValidCaptcha)
            {
                lblMessage.Text = "Captcha is incorrect.";
                return;
            }

            if (XmlDataStore.MemberExists(username))
            {
                lblMessage.Text = "That username already exists.";
                return;
            }

            string hash = PasswordHasher.HashPassword(password);
            XmlDataStore.AddMember(username, hash);
            lblMessage.Text = "Account created successfully. Please log in.";
        }
    }
}