<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment_5_6.Login" %>

<<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card">
        <h2>Login</h2>

        <asp:Label runat="server" Text="Username"></asp:Label><br />
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />

        <asp:Label runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />

        <asp:Label runat="server" Text="Role"></asp:Label><br />
        <asp:DropDownList ID="ddlRole" runat="server">
            <asp:ListItem>Member</asp:ListItem>
            <asp:ListItem>Staff</asp:ListItem>
        </asp:DropDownList><br />

        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
    </div>
</asp:Content>