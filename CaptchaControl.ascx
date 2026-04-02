<%--this is a user control that we can plug into multiple pages --%>


<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CaptchaControl.ascx.cs" Inherits="Assignment_5_6.Controls.CaptchaControl" %>

<div class="card">
    <asp:Label ID="lblCaptchaText" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
    <br />
    <asp:TextBox ID="txtCaptchaInput" runat="server"></asp:TextBox>
    <asp:Button ID="btnRefreshCaptcha" runat="server" Text="Refresh" OnClick="btnRefreshCaptcha_Click" />
    <br />
    <asp:Label ID="lblCaptchaStatus" runat="server" ForeColor="Red"></asp:Label>
</div>