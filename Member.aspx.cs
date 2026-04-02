using System;

namespace Assignment_5_6
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated || !AuthHelper.IsMember())
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack) //if the page wasn't reloaded (it's the first time the page was loaded)
            {
                lblWelcome.Text = "Welcome, " + Session["Username"];
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            string service = ddlScheduleService.SelectedValue; //ddl means dropdown list
            string date = txtDate.Text.Trim();
            string time = ddlTimeSlot.SelectedValue;

            XmlDataStore.AddAppointment(username, service, date, time);
            Session["LastAppointment"] = service + " on " + date + " at " + time;
            lblBookMsg.Text = "Appointment booked successfully.";
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            string service = ddlTransactionService.SelectedValue;
            string paymentMethod = ddlPaymentMethod.SelectedValue;
            decimal amount = AnalyticsHelper.GetPriceForService(service);

            XmlDataStore.AddTransaction(username, service, amount, paymentMethod);
            lblPayMsg.Text = "Transaction saved. Total: $" + amount;
        }

        protected void btnReview_Click(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            string service = ddlReviewService.SelectedValue;
            int rating = int.Parse(ddlRating.SelectedValue);
            string comments = txtComments.Text.Trim();

            XmlDataStore.AddReview(username, service, rating, comments);
            lblReviewMsg.Text = "Review submitted successfully.";
        }
    }
}