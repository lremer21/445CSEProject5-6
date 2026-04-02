using System;
using System.Web.Services;

namespace Assignment_5_6.Services
{
    [WebService(Namespace = "http://spa.cse445.asu.edu/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class SpaService : System.Web.Services.WebService
    {
        [WebMethod]
        public string BookAppointment(string username, string serviceName, string appointmentDate, string timeSlot)
        {
            XmlDataStore.AddAppointment(username, serviceName, appointmentDate, timeSlot);
            return "Appointment booked successfully.";
        }

        [WebMethod]
        public decimal CalculateTransaction(string serviceName)
        {
            return AnalyticsHelper.GetPriceForService(serviceName);
        }

        [WebMethod]
        public string SubmitReview(string username, string serviceName, int rating, string comments)
        {
            XmlDataStore.AddReview(username, serviceName, rating, comments);
            return "Review submitted successfully.";
        }

        [WebMethod]
        public string GetAnalyticsSummary()
        {
            return "Appointments: " + AnalyticsHelper.TotalAppointments()
                + ", Revenue: $" + AnalyticsHelper.TotalRevenue()
                + ", Average Rating: " + AnalyticsHelper.AverageRating().ToString("0.00")
                + ", Most Booked Service: " + AnalyticsHelper.MostBookedService();
        }
    }
}
