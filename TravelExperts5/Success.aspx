<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="TravelExperts5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id ="success">
        <h5>Thank you for registering! You are now a Travel Experts customer!</h5>
        <br />
        <asp:Button class="scsbtn" runat="server" Text="Login Here" PostBackUrl="~/Login.aspx" />
    </div>
</asp:Content>
