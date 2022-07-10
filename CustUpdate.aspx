<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustUpdate.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: yellow;
    color:black
}

</style>

</head>
<body style="height: 189px">
    <form id="form1" runat="server">
        <div>
            <img src="IMG/Logo1.jpg" style="height: 198px; width: 1533px">
        </div>
            <div>
     <ul>
  <li><a class="active" href="HomePage.aspx">Home</a></li>
 
  <li><a href="CustInfoFRM.aspx">Customers</a></li>
  <li><a href="SupInfoFRM.aspx">Suppliers</a></li>
  <li><a href="ProInfoFRM.aspx">Products</a></li>
  <li><a href="PurMastDetlFRM.aspx">Purchases</a></li>
  <li><a href="SalesMastDetlFRM.aspx">Sales</a></li>

 <li><a href="AllRPT.aspx">All Reports</a></li>

  <li><a href="ContactUs.aspx">Contact us</a></li>
  </ul>
    </div>

    <div style="height: 22px">
    
    </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="custid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="custid" HeaderText="custid" ReadOnly="True" SortExpression="custid" />
                    <asp:BoundField DataField="custname" HeaderText="custname" SortExpression="custname" />
                    <asp:BoundField DataField="custadd" HeaderText="custadd" SortExpression="custadd" />
                    <asp:BoundField DataField="custcity" HeaderText="custcity" SortExpression="custcity" />
                    <asp:BoundField DataField="custcontact" HeaderText="custcontact" SortExpression="custcontact" />
                    <asp:BoundField DataField="baldue" HeaderText="baldue" SortExpression="baldue" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBTConnectionString %>" DeleteCommand="DELETE FROM [CustInfoTBL] WHERE [custid] = ?" InsertCommand="INSERT INTO [CustInfoTBL] ([custid], [custname], [custadd], [custcity], [custcontact], [baldue]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:MyDBTConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CustInfoTBL]" UpdateCommand="UPDATE [CustInfoTBL] SET [custname] = ?, [custadd] = ?, [custcity] = ?, [custcontact] = ?, [baldue] = ? WHERE [custid] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="custid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="custid" Type="Int32" />
                    <asp:Parameter Name="custname" Type="String" />
                    <asp:Parameter Name="custadd" Type="String" />
                    <asp:Parameter Name="custcity" Type="String" />
                    <asp:Parameter Name="custcontact" Type="String" />
                    <asp:Parameter Name="baldue" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="custname" Type="String" />
                    <asp:Parameter Name="custadd" Type="String" />
                    <asp:Parameter Name="custcity" Type="String" />
                    <asp:Parameter Name="custcontact" Type="String" />
                    <asp:Parameter Name="baldue" Type="Int32" />
                    <asp:Parameter Name="custid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
