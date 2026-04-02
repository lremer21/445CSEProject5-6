<%@ Page Title="Member" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="Assignment_5_6.Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card">
        <h2>Member Page</h2>
        <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        <p>
            Members can schedule appointments, calculate service costs, and submit reviews.
        </p>
    </div>

    <div class="card">
        <h3>Scheduling</h3>
        <asp:DropDownList ID="ddlScheduleService" runat="server">
            <asp:ListItem>Massage</asp:ListItem>
            <asp:ListItem>Facial</asp:ListItem>
            <asp:ListItem>Manicure</asp:ListItem>
            <asp:ListItem>Pedicure</asp:ListItem>
        </asp:DropDownList><br />

        <asp:TextBox ID="txtDate" runat="server" placeholder="YYYY-MM-DD"></asp:TextBox><br />
        <asp:DropDownList ID="ddlTimeSlot" runat="server">
            <asp:ListItem>10:00 AM</asp:ListItem>
            <asp:ListItem>12:00 PM</asp:ListItem>
            <asp:ListItem>2:00 PM</asp:ListItem>
            <asp:ListItem>4:00 PM</asp:ListItem>
        </asp:DropDownList><br />

        <asp:Button ID="btnBook" runat="server" Text="Book Appointment" CssClass="button" OnClick="btnBook_Click" />
        <br />
        <asp:Label ID="lblBookMsg" runat="server" CssClass="message"></asp:Label>
    </div>

    <div class="card">
        <h3>Transactions</h3>
        <asp:DropDownList ID="ddlTransactionService" runat="server">
            <asp:ListItem>Massage</asp:ListItem>
            <asp:ListItem>Facial</asp:ListItem>
            <asp:ListItem>Manicure</asp:ListItem>
            <asp:ListItem>Pedicure</asp:ListItem>
        </asp:DropDownList><br />
        <asp:DropDownList ID="ddlPaymentMethod" runat="server">
            <asp:ListItem>Credit Card</asp:ListItem>
            <asp:ListItem>Debit Card</asp:ListItem>
            <asp:ListItem>Cash</asp:ListItem>
        </asp:DropDownList><br />
        <asp:Button ID="btnPay" runat="server" Text="Calculate and Save Transaction" CssClass="button" OnClick="btnPay_Click" />
        <br />
        <asp:Label ID="lblPayMsg" runat="server" CssClass="message"></asp:Label>
    </div>

    <div class="card">
        <h3>Reviews</h3>
        <asp:DropDownList ID="ddlReviewService" runat="server">
            <asp:ListItem>Massage</asp:ListItem>
            <asp:ListItem>Facial</asp:ListItem>
            <asp:ListItem>Manicure</asp:ListItem>
            <asp:ListItem>Pedicure</asp:ListItem>
        </asp:DropDownList><br />
        <asp:DropDownList ID="ddlRating" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList><br />
        <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox><br />
        <asp:Button ID="btnReview" runat="server" Text="Submit Review" CssClass="button" OnClick="btnReview_Click" />
        <br />
        <asp:Label ID="lblReviewMsg" runat="server" CssClass="message"></asp:Label>
    </div>

</asp:Content>