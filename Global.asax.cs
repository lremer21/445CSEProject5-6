using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

//global.asax files handle application-wide events

namespace Assignment_5_6
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes); //map an incoming request to a page/handler
            BundleConfig.RegisterBundles(BundleTable.Bundles); //instead of loading all the individual css files, you combine them into one

            Application["AppName"] = "Spa Management App";
            Application["StartTime"] = DateTime.Now;
            Application["TotalSessions"] = 0; //when app begins, total sessions is 0
        }

        void Session_Start(object sender, EventArgs e)
        {
            int current = (int)(Application["TotalSessions"] ?? 0);
            Application["TotalSessions"] = current + 1; //each new session adds one to the variable
        }

        void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();
            Application["LastError"] = ex != null ? ex.Message : "Unknown error"; //display error
        }
    }
}