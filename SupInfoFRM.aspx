<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SupInfoFRM.aspx.cs" Inherits="SupInfoFRM" %>

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

         .auto-style2 {
             height: 50px;
         }
         .auto-style4 {
             width: 159px;
         }
         .auto-style5 {
             width: 159px;
             height: 50px;
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
        <table bgcolor="BurlyWood">
            <tr>
                <td colspan="3"><asp:Label ID="Label1" runat="server" Text="Supplier Info Form" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
            </tr>

            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Supplier ID" Font-Bold="True"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="Txtsupid" runat="server"></asp:TextBox></td>
                <td></td>
            </tr>

             <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Supplier Name" Font-Bold="True"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="Txtsupname" runat="server"></asp:TextBox></td>
                <td></td>
            </tr>

             <tr>
                <td class="auto-style2"><asp:Label ID="Label4" runat="server" Text="Supplier Address" Font-Bold="True"></asp:Label></td>
                <td class="auto-style5"><asp:TextBox ID="Txtsupadd" runat="server"></asp:TextBox></td>
                <td class="auto-style2"></td>
            </tr>

             <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Supplier City" Font-Bold="True"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="Txtsupcity" runat="server"></asp:TextBox></td>
                <td></td>
            </tr>

             <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Email" Font-Bold="True"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="Txtsupemail" runat="server"></asp:TextBox></td>
                <td></td>
            </tr>

             <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Supplier Contact" Font-Bold="True"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="Txtsupcontact" runat="server" MaxLength="10"></asp:TextBox></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3"><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True"></asp:Button>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
                </td>
            </tr>

            <tr>
                <td colspan="3"><asp:Label ID="Label8" runat="server" Text="Label" ForeColor="#660033"></asp:Label></td>
            </tr>
        </table>
    </center>
    </div>
    </form>
</body>
</html>
