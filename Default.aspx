<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment_5_6._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> <%--to comply with master page --%>

    <div class="card">
        <h1>Spa Management Application</h1>
        <p>
            This application provides four service domains: scheduling, transactions, reviews, and analytics.
            Users can sign up as members, book spa services, simulate transactions, submit reviews,
            and staff can view business analytics.
        </p>
        <p>
            Test flow: create a new member account, log in, go to the Member page, book an appointment,
            calculate a transaction, submit a review, and then log in as staff to view analytics.
        </p>
        <asp:Button ID="btnGoMember" runat="server" Text="Go to Member Page" CssClass="button" PostBackUrl="~/Member.aspx" />
        <asp:Button ID="btnGoStaff" runat="server" Text="Go to Staff Page" CssClass="button" PostBackUrl="~/Staff.aspx" />
    </div>

    <div class="card">
        <h2>Application and Components Summary Table</h2>
        <table class="table">
            <tr>
                <th>Provider</th>
                <th>Type</th>
                <th>Description</th>
                <th>Used In</th>
            </tr>
            <tr>
                <td>Mehek Khandelwal, Laney Remer</td>
                <td>ASPX Page</td>
                <td>Default public page with service directory and navigation</td>
                <td>Default.aspx</td>
            </tr>
            <tr>
                <td>Mehek Khandelwal</td>
                <td>User Control</td>
                <td>Captcha used during member signup</td>
                <td>Signup.aspx</td>
            </tr>
            <tr>
                <td>Laney Remer</td>
                <td>DLL / Hash Helper</td>
                <td>Password hashing for member and staff authentication</td>
                <td>Signup.aspx, Login.aspx</td>
            </tr>
            <tr>
                <td>Mehek Khandelwal</td>
                <td>XML Data</td>
                <td>Stores members, staff, appointments, transactions, and reviews</td>
                <td>App_Data</td>
            </tr>
            <tr>
                <td>Mehek Khandelwal</td>
                <td>Global.asax</td>
                <td>Tracks application start, sessions, and last error</td>
                <td>Global.asax</td>
            </tr>
            <tr>
                <td>Your Name</td>
                <td>Cookie + Session</td>
                <td>Stores logged-in user and role information</td>
                <td>Login.aspx, Member.aspx, Staff.aspx</td>
            </tr>
            <tr>
                <td>Laney Remer</td>
                <td>Web Service</td>
                <td>Scheduling service: book appointment</td>
                <td>SpaService.asmx</td>
            </tr>
            <tr>
                <td>Your Name</td>
                <td>Web Service</td>
                <td>Transactions service: calculate service price</td>
                <td>SpaService.asmx</td>
            </tr>
            <tr>
                <td>Your Name</td>
                <td>Web Service</td>
                <td>Reviews service: add review</td>
                <td>SpaService.asmx</td>
            </tr>
            <tr>
                <td>Your Name</td>
                <td>Web Service</td>
                <td>Analytics service: summarize bookings, revenue, and ratings</td>
                <td>SpaService.asmx</td>
            </tr>
        </table>
    </div>

    <div class="card">
        <h2>TryIt Section</h2>
        <asp:TextBox ID="txtHashInput" runat="server" placeholder="Enter password to hash"></asp:TextBox>
        <asp:Button ID="btnHash" runat="server" Text="Hash Password" OnClick="btnHash_Click" CssClass="button" />
        <br />
        <asp:Label ID="lblHashOutput" runat="server" CssClass="message"></asp:Label>
        <hr />

        <asp:DropDownList ID="ddlServiceTryIt" runat="server">
            <asp:ListItem>Massage</asp:ListItem>
            <asp:ListItem>Facial</asp:ListItem>
            <asp:ListItem>Manicure</asp:ListItem>
            <asp:ListItem>Pedicure</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnTryPrice" runat="server" Text="Calculate Price" OnClick="btnTryPrice_Click" CssClass="button" />
        <br />
        <asp:Label ID="lblTryPrice" runat="server" CssClass="message"></asp:Label>
    </div>

</asp:Content>