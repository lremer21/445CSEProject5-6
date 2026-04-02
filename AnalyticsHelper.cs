using System;
using System.Linq;
using System.Xml.Linq;

namespace Assignment_5_6
{
    public static class AnalyticsHelper
    {
        public static int TotalAppointments()
        {
            XDocument doc = XmlDataStore.GetAppointments();
            return doc.Root.Elements("appointment").Count();
        }

        public static decimal TotalRevenue()
        {
            XDocument doc = XmlDataStore.GetTransactions();
            return doc.Root.Elements("transaction")
                .Sum(x =>
                {
                    decimal amount;
                    decimal.TryParse((string)x.Element("amount"), out amount);
                    return amount;
                });
        }

        public static double AverageRating()
        {
            XDocument doc = XmlDataStore.GetReviews();
            var ratings = doc.Root.Elements("review")
                .Select(x =>
                {
                    int rating;
                    int.TryParse((string)x.Element("rating"), out rating);
                    return rating;
                })
                .Where(r => r > 0)
                .ToList();

            if (ratings.Count == 0) return 0;
            return ratings.Average();
        }

        public static string MostBookedService()
        {
            XDocument doc = XmlDataStore.GetAppointments();
            var group = doc.Root.Elements("appointment")
                .GroupBy(x => (string)x.Element("serviceName"))
                .OrderByDescending(g => g.Count())
                .FirstOrDefault();
            return group == null ? "No data yet" : group.Key;
        }

        public static decimal GetPriceForService(string serviceName)
        {
            switch (serviceName)
            {
                case "Massage": return 80m;
                case "Facial": return 65m;
                case "Manicure": return 35m;
                case "Pedicure": return 45m;
                default: return 0m;
            }
        }
    }
}