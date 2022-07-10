<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SupUpdate.aspx.cs" Inherits="HomePage" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="supid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="supid" HeaderText="supid" ReadOnly="True" SortExpression="supid" />
                    <asp:BoundField DataField="supname" HeaderText="supname" SortExpression="supname" />
                    <asp:BoundField DataField="supadd" HeaderText="supadd" SortExpression="supadd" />
                    <asp:BoundField DataField="supcity" HeaderText="supcity" SortExpression="supcity" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="supcontact" HeaderText="supcontact" SortExpression="supcontact" />
                    <asp:BoundField DataField="baldue" HeaderText="baldue" SortExpression="baldue" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBTConnectionString %>" DeleteCommand="DELETE FROM [SupInfoTBL] WHERE [supid] = ?" InsertCommand="INSERT INTO [SupInfoTBL] ([supid], [supname], [supadd], [supcity], [email], [supcontact], [baldue]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:MyDBTConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [SupInfoTBL]" UpdateCommand="UPDATE [SupInfoTBL] SET [supname] = ?, [supadd] = ?, [supcity] = ?, [email] = ?, [supcontact] = ?, [baldue] = ? WHERE [supid] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="supid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="supid" Type="Int32" />
                    <asp:Parameter Name="supname" Type="String" />
                    <asp:Parameter Name="supadd" Type="String" />
                    <asp:Parameter Name="supcity" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="supcontact" Type="String" />
                    <asp:Parameter Name="baldue" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="supname" Type="String" />
                    <asp:Parameter Name="supadd" Type="String" />
                    <asp:Parameter Name="supcity" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="supcontact" Type="String" />
                    <asp:Parameter Name="baldue" Type="Int32" />
                    <asp:Parameter Name="supid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
