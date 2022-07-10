<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProUpdate.aspx.cs" Inherits="HomePage" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="unit" HeaderText="unit" SortExpression="unit" />
                    <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBTConnectionString %>" DeleteCommand="DELETE FROM [ProInfoTBL] WHERE [pid] = ?" InsertCommand="INSERT INTO [ProInfoTBL] ([pid], [pname], [category], [unit], [MRP]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:MyDBTConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ProInfoTBL]" UpdateCommand="UPDATE [ProInfoTBL] SET [pname] = ?, [category] = ?, [unit] = ?, [MRP] = ? WHERE [pid] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="pid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pid" Type="Int32" />
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="unit" Type="String" />
                    <asp:Parameter Name="MRP" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="unit" Type="String" />
                    <asp:Parameter Name="MRP" Type="Int32" />
                    <asp:Parameter Name="pid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
