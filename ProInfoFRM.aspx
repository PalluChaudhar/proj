<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProInfoFRM.aspx.cs" Inherits="ProInfoFRM" %>

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
<body>
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

    <div>
        <center>
    <table bgcolor="PowderBlue">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Product Information  Table" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Product ID" Font-Bold="True"></asp:Label></td>
            <td>
                <asp:TextBox ID="Txtpid" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Product Name" Font-Bold="True"></asp:Label></td>
            <td>
                <asp:TextBox ID="Txtpname" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Category" Font-Bold="True"></asp:Label></td>
            <td>
                <asp:TextBox ID="Txtcat" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Unit" Font-Bold="True"></asp:Label></td>
            <td>
                <asp:TextBox ID="Txtunit" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="MRP" Font-Bold="True"></asp:Label></td>
            <td>
                <asp:TextBox ID="Txtmrp" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>

        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" />
                <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
            </td>
            
        </tr>
        <tr>
            <td colspan="3"><asp:Label ID="Label7" runat="server" Text="Label" ForeColor="#000066"></asp:Label></td>
        </tr>
    </table>
            </center>
    </div>
    </form>
</body>
</html>
