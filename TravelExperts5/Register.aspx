<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TravelExperts5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 398px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id ="regfrm" class="auto-style1">
        <p>Register as a new customer</p>
        <p>
            <asp:Table runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">First Name</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="FirstNameBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Last Name</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="LastNameBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">E-mail</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="EmailBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Phone Number</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="PhoneBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Address</asp:TableCell>                 
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="AddressBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">City</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="CityBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Province</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:DropDownList ID="ddlProvince" runat="server">
                            <asp:ListItem>Alberta</asp:ListItem>
                            <asp:ListItem>British Columbia</asp:ListItem>
                            <asp:ListItem>Manitoba</asp:ListItem>
                            <asp:ListItem>New Brunswick</asp:ListItem>
                            <asp:ListItem>Newfoundland & Labrador</asp:ListItem>
                            <asp:ListItem>Northwest Territories</asp:ListItem>
                            <asp:ListItem>Nunavut</asp:ListItem>
                            <asp:ListItem>Ontario</asp:ListItem>
                            <asp:ListItem>Prince Edward Island</asp:ListItem>
                            <asp:ListItem>Quebec</asp:ListItem>
                            <asp:ListItem>Saskatchewan</asp:ListItem>
                            <asp:ListItem>Yukon</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Password</asp:TableCell>                   
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="PasswordBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
               <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Confirm Password</asp:TableCell>                   
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="ConfirmPasswordBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </p>
        <p>
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        </p>
    </div>
</asp:Content>
