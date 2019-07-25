<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="TravelExperts5.Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 472px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" Height="50px" Width="272px">
                <Fields>
                    <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
                    <asp:BoundField DataField="CustFirstName" HeaderText="CustFirstName" SortExpression="CustFirstName" />
                    <asp:BoundField DataField="CustLastName" HeaderText="CustLastName" SortExpression="CustLastName" />
                    <asp:BoundField DataField="CustAddress" HeaderText="CustAddress" SortExpression="CustAddress" />
                    <asp:BoundField DataField="CustCity" HeaderText="CustCity" SortExpression="CustCity" />
                    <asp:BoundField DataField="CustProv" HeaderText="CustProv" SortExpression="CustProv" />
                    <asp:BoundField DataField="CustPostal" HeaderText="CustPostal" SortExpression="CustPostal" />
                    <asp:BoundField DataField="CustCountry" HeaderText="CustCountry" SortExpression="CustCountry" />
                    <asp:BoundField DataField="CustHomePhone" HeaderText="CustHomePhone" SortExpression="CustHomePhone" />
                    <asp:BoundField DataField="CustBusPhone" HeaderText="CustBusPhone" SortExpression="CustBusPhone" />
                    <asp:BoundField DataField="CustEmail" HeaderText="CustEmail" SortExpression="CustEmail" />
                    <asp:BoundField DataField="CustUserName" HeaderText="CustUserName" SortExpression="CustUserName" />
                    <asp:BoundField DataField="CustPassword" HeaderText="CustPassword" SortExpression="CustPassword" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelExpertsConnectionString1 %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customers] ([CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [CustUserName], [CustPassword]) VALUES (@CustFirstName, @CustLastName, @CustAddress, @CustCity, @CustProv, @CustPostal, @CustCountry, @CustHomePhone, @CustBusPhone, @CustEmail, @CustUserName, @CustPassword)" SelectCommand="SELECT [CustomerId], [CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [CustUserName], [CustPassword] FROM [Customers] WHERE ([CustUserName] = @CustUserName)" UpdateCommand="UPDATE [Customers] SET [CustFirstName] = @CustFirstName, [CustLastName] = @CustLastName, [CustAddress] = @CustAddress, [CustCity] = @CustCity, [CustProv] = @CustProv, [CustPostal] = @CustPostal, [CustCountry] = @CustCountry, [CustHomePhone] = @CustHomePhone, [CustBusPhone] = @CustBusPhone, [CustEmail] = @CustEmail, [CustUserName] = @CustUserName, [CustPassword] = @CustPassword WHERE [CustomerId] = @CustomerId">
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
                    <asp:SessionParameter Name="CustUserName" SessionField="CustUserName" Type="String" />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="BookingNo" HeaderText="BookingNo" SortExpression="BookingNo" />
                    <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
                    <asp:BoundField DataField="TripStart" HeaderText="TripStart" SortExpression="TripStart" />
                    <asp:BoundField DataField="TripEnd" HeaderText="TripEnd" SortExpression="TripEnd" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                    <asp:BoundField DataField="BasePrice" HeaderText="BasePrice" SortExpression="BasePrice" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TravelExpertsConnectionString1 %>" SelectCommand="SELECT Bookings.BookingNo, Bookings.BookingDate, BookingDetails.TripStart, BookingDetails.TripEnd, BookingDetails.Description, BookingDetails.Destination, BookingDetails.BasePrice FROM BookingDetails INNER JOIN Bookings ON BookingDetails.BookingId = Bookings.BookingId INNER JOIN Customers ON Bookings.CustomerId = Customers.CustomerId"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
