using System;
using System.Web.UI;

//note: uses Session built-in storage variable

namespace Assignment_5_6.Controls
{
    public partial class CaptchaControl : UserControl
    {
        public bool IsValidCaptcha
        {
            get
            {
                if (Session["CaptchaCode"] == null) return false;
                return string.Equals(txtCaptchaInput.Text.Trim(),
                    Session["CaptchaCode"].ToString(),
                    StringComparison.OrdinalIgnoreCase);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //only generate a captcha the first time the page loads
            {
                GenerateCaptcha();
            }
        }

        protected void btnRefreshCaptcha_Click(object sender, EventArgs e)
        {
            GenerateCaptcha();
        }

        private void GenerateCaptcha()
        {
            string code = Guid.NewGuid().ToString("N").Substring(0, 6).ToUpper();
            Session["CaptchaCode"] = code;
            lblCaptchaText.Text = code;
            lblCaptchaStatus.Text = "";
            txtCaptchaInput.Text = "";
        }
    }
}