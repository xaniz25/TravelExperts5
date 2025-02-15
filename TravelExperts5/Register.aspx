﻿<%--Form by Shanice Talan. Validation by Victor Lantion--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TravelExperts5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css"> .auto-style1 { height: 398px; } </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id ="regfrm" class="auto-style1">
        <p>Register as a new customer</p>
        <p>
            <asp:Table runat="server" Width="509px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">First Name</asp:TableCell>
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="FirstNameBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FirstNameBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Last Name</asp:TableCell>
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="LastNameBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LastNameBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">E-mail</asp:TableCell>
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="EmailBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="EmailBox" Display="Static" ErrorMessage="e.g johnsmith@email.com" ForeColor="#6600CC" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Home Number</asp:TableCell>
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="HPhoneBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="HPhoneBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="HPhoneBox" Display="Static" ErrorMessage="e.g 4031231234" ForeColor="#6600CC" ValidationExpression="^\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Business Number</asp:TableCell>
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="BPhoneBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="BPhoneBox" Display="Static" ErrorMessage="e.g 4031231234" ForeColor="#6600CC" ValidationExpression="^\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Address</asp:TableCell>                 
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="AddressBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AddressBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">City</asp:TableCell>
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="CityBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CityBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PostalBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="PostalBox" Display="Static" ErrorMessage="e.g TZ12Z3" ForeColor="#6600CC" ValidationExpression="[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Country</asp:TableCell>
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="CountryBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CountryBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Username</asp:TableCell>                   
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="UsernameBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="UsernameBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Password</asp:TableCell>                   
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="PasswordBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="PasswordBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" ></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
               <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Confirm Password</asp:TableCell>                   
                    <asp:TableCell runat="server">
                    <asp:TextBox ID="ConfirmPasswordBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ConfirmPasswordBox" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" ></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" CausesValidation="False" />
        </p>
    </div>
</asp:Content>
