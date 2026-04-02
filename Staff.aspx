<%@ Page Title="Staff" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Assignment_5_6.Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card">
        <h2>Staff Page</h2>
        <asp:Label ID="lblStaffWelcome" runat="server"></asp:Label>
        <p>Staff can view analytics and business summaries.</p>
    </div>

    <div class="card">
        <h3>Analytics Dashboard</h3>
        <asp:Button ID="btnLoadAnalytics" runat="server" Text="Load Analytics" CssClass="button" OnClick="btnLoadAnalytics_Click" />
        <br /><br />
        <asp:Label ID="lblAppointments" runat="server"></asp:Label><br />
        <asp:Label ID="lblRevenue" runat="server"></asp:Label><br />
        <asp:Label ID="lblRating" runat="server"></asp:Label><br />
        <asp:Label ID="lblPopularService" runat="server"></asp:Label><br />
    </div>
</asp:Content>