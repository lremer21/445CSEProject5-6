using System;
using System.Web;
using System.Web.Security;

namespace Assignment_5_6
{
    public static class AuthHelper
    {
        public static void SignInMember(string username)
        {
            FormsAuthentication.SetAuthCookie(username, false);
            HttpContext.Current.Session["Role"] = "Member";
            HttpContext.Current.Session["Username"] = username;

            HttpCookie cookie = new HttpCookie("SpaUser");
            cookie["Username"] = username;
            cookie["Role"] = "Member";
            cookie.Expires = DateTime.Now.AddDays(7);
            HttpContext.Current.Response.Cookies.Add(cookie);
        }

        public static void SignInStaff(string username)
        {
            FormsAuthentication.SetAuthCookie(username, false);
            HttpContext.Current.Session["Role"] = "Staff";
            HttpContext.Current.Session["Username"] = username;

            HttpCookie cookie = new HttpCookie("SpaUser");
            cookie["Username"] = username;
            cookie["Role"] = "Staff";
            cookie.Expires = DateTime.Now.AddDays(7);
            HttpContext.Current.Response.Cookies.Add(cookie);
        }

        public static void SignOut()
        {
            FormsAuthentication.SignOut();
            HttpContext.Current.Session.Clear();

            if (HttpContext.Current.Request.Cookies["SpaUser"] != null)
            {
                HttpCookie cookie = new HttpCookie("SpaUser");
                cookie.Expires = DateTime.Now.AddDays(-1);
                HttpContext.Current.Response.Cookies.Add(cookie);
            }
        }

        public static bool IsMember()
        {
            return HttpContext.Current.Session["Role"] != null &&
                   HttpContext.Current.Session["Role"].ToString() == "Member";
        }

        public static bool IsStaff()
        {
            return HttpContext.Current.Session["Role"] != null &&
                   HttpContext.Current.Session["Role"].ToString() == "Staff";
        }
    }
}