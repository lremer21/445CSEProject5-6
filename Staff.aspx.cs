using System;

namespace Assignment_5_6
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated || !AuthHelper.IsStaff())
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                lblStaffWelcome.Text = "Welcome, staff user " + Session["Username"];
            }
        }

        protected void btnLoadAnalytics_Click(object sender, EventArgs e)
        {
            lblAppointments.Text = "Total Appointments: " + AnalyticsHelper.TotalAppointments();
            lblRevenue.Text = "Total Revenue: $" + AnalyticsHelper.TotalRevenue();
            lblRating.Text = "Average Rating: " + AnalyticsHelper.AverageRating().ToString("0.00");
            lblPopularService.Text = "Most Booked Service: " + AnalyticsHelper.MostBookedService();
        }
    }
}