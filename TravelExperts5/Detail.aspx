<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="TravelExperts5.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="details">
            <h3>Your Information</h3>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" Height="50px" Width="272px" CellPadding="1" GridLines="None">
                <AlternatingRowStyle BorderStyle="None" />
                <CommandRowStyle BorderStyle="None" />
                <Fields>
                    <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
                    <asp:BoundField DataField="CustFirstName" HeaderText="First Name" SortExpression="CustFirstName" />
                    <asp:BoundField DataField="CustLastName" HeaderText="Last Name" SortExpression="CustLastName" />
                    <asp:BoundField DataField="CustAddress" HeaderText="Address" SortExpression="CustAddress" />
                    <asp:BoundField DataField="CustCity" HeaderText="City" SortExpression="CustCity" />
                    <asp:BoundField DataField="CustProv" HeaderText="Prov" SortExpression="CustProv" />
                    <asp:BoundField DataField="CustPostal" HeaderText="Postal Code" SortExpression="CustPostal" />
                    <asp:BoundField DataField="CustCountry" HeaderText="Country" SortExpression="CustCountry" />
                    <asp:BoundField DataField="CustHomePhone" HeaderText="Home Phone" SortExpression="CustHomePhone" />
                    <asp:BoundField DataField="CustBusPhone" HeaderText="Business Phone" SortExpression="CustBusPhone" />
                    <asp:BoundField DataField="CustEmail" HeaderText="Email" SortExpression="CustEmail" />
                    <asp:BoundField DataField="CustUserName" HeaderText="Username" SortExpression="CustUserName" />
                    <asp:BoundField DataField="CustPassword" HeaderText="Password" SortExpression="CustPassword" />
                    <asp:CommandField ShowEditButton="True" EditText="Edit Your Information" >
                    <ControlStyle Font-Bold="True" ForeColor="#58A28B" />
                    </asp:CommandField>
                </Fields>
                <InsertRowStyle BorderStyle="None" />
                <RowStyle BorderStyle="None" />
            </asp:DetailsView>
            <br />
            <h3>Your Bookings</h3>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelExpertsConnectionString1 %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customers] ([CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [CustUserName], [CustPassword]) VALUES (@CustFirstName, @CustLastName, @CustAddress, @CustCity, @CustProv, @CustPostal, @CustCountry, @CustHomePhone, @CustBusPhone, @CustEmail, @CustUserName, @CustPassword)" SelectCommand="SELECT [CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [CustUserName], [CustPassword] FROM [Customers] WHERE ([CustUserName] = @CustUserName)" UpdateCommand="UPDATE [Customers] SET [CustFirstName] = @CustFirstName, [CustLastName] = @CustLastName, [CustAddress] = @CustAddress, [CustCity] = @CustCity, [CustProv] = @CustProv, [CustPostal] = @CustPostal, [CustCountry] = @CustCountry, [CustHomePhone] = @CustHomePhone, [CustBusPhone] = @CustBusPhone, [CustEmail] = @CustEmail, [CustUserName] = @CustUserName, [CustPassword] = @CustPassword WHERE [CustomerId] = @CustomerId" ProviderName="System.Data.SqlClient">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustFirstName" Type="String" />
                    <asp:Parameter Name="CustLastName" Type="String" />
                    <asp:Parameter Name="CustAddress" Type="String" />
                    <asp:Parameter Name="CustCity" Type="String" />
                    <asp:Parameter Name="CustProv" Type="String" />
                    <asp:Parameter Name="CustPostal" Type="String" />
                    <asp:Parameter Name="CustCountry" Type="String" />
                    <asp:Parameter Name="CustHomePhone" Type="String" />
                    <asp:Parameter Name="CustBusPhone" Type="String" />
                    <asp:Parameter Name="CustEmail" Type="String" />
                    <asp:Parameter Name="CustUserName" Type="String" />
                    <asp:Parameter Name="CustPassword" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="CustUserName" SessionField="Username" Type="String" DefaultValue="" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustFirstName" Type="String" />
                    <asp:Parameter Name="CustLastName" Type="String" />
                    <asp:Parameter Name="CustAddress" Type="String" />
                    <asp:Parameter Name="CustCity" Type="String" />
                    <asp:Parameter Name="CustProv" Type="String" />
                    <asp:Parameter Name="CustPostal" Type="String" />
                    <asp:Parameter Name="CustCountry" Type="String" />
                    <asp:Parameter Name="CustHomePhone" Type="String" />
                    <asp:Parameter Name="CustBusPhone" Type="String" />
                    <asp:Parameter Name="CustEmail" Type="String" />
                    <asp:Parameter Name="CustUserName" Type="String" />
                    <asp:Parameter Name="CustPassword" Type="String" />
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="5" BorderStyle="None">
                <Columns>
                    <asp:BoundField DataField="BookingNo" HeaderText="BookingNo" SortExpression="BookingNo" />
                    <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
                    <asp:BoundField DataField="TripStart" HeaderText="TripStart" SortExpression="TripStart" />
                    <asp:BoundField DataField="TripEnd" HeaderText="TripEnd" SortExpression="TripEnd" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                    <asp:BoundField DataField="BasePrice" HeaderText="BasePrice" SortExpression="BasePrice" />
                </Columns>
                <HeaderStyle BackColor="#58A28B" BorderStyle="None" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TravelExpertsConnectionString %>" SelectCommand="SELECT        Bookings.BookingNo, Bookings.BookingDate, BookingDetails.TripStart, BookingDetails.TripEnd, BookingDetails.Description, BookingDetails.Destination, BookingDetails.BasePrice
FROM            BookingDetails INNER JOIN
                         Bookings ON BookingDetails.BookingId = Bookings.BookingId INNER JOIN
                         Customers ON Bookings.CustomerId = Customers.CustomerId
			 where Customers.CustUserName=@CustUserName">
                <SelectParameters>
                    <asp:SessionParameter Name="CustUserName" SessionField="Username" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>
