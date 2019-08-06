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
                    <asp:TableCell runat="server">Home Number</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="HPhoneBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Business Number</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="BPhoneBox" runat="server"></asp:TextBox>
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
                            <asp:ListItem>AB</asp:ListItem>
                            <asp:ListItem>BC</asp:ListItem>
                            <asp:ListItem>MB</asp:ListItem>
                            <asp:ListItem>NB</asp:ListItem>
                            <asp:ListItem>NL</asp:ListItem>
                            <asp:ListItem>NT</asp:ListItem>
                            <asp:ListItem>NV</asp:ListItem>
                            <asp:ListItem>ON</asp:ListItem>
                            <asp:ListItem>PE</asp:ListItem>
                            <asp:ListItem>QC</asp:ListItem>
                            <asp:ListItem>SK</asp:ListItem>
                            <asp:ListItem>YK</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Postal Code</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="PostalBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Country</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="CountryBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Username</asp:TableCell>                   
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="UsernameBox" runat="server"></asp:TextBox>
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
