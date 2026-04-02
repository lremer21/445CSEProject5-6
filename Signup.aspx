<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Assignment_5_6.Signup" %>
<%@ Register Src="~/CaptchaControl.ascx" TagPrefix="uc" TagName="CaptchaControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card">
        <h2>Member Sign Up</h2>

        <asp:Label runat="server" Text="Username"></asp:Label><br />
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />

        <asp:Label runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />

        <uc:CaptchaControl ID="Captcha1" runat="server" />

        <asp:Button ID="btnSignup" runat="server" Text="Create Account" CssClass="button" OnClick="btnSignup_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
    </div>
</asp:Content>