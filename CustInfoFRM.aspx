<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustInfoFRM.aspx.cs" Inherits="CustInfoFRM" %>

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

         .auto-style1 {
             width: 26px;
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
        <table bgcolor="PeachPuff" border="1">
        <tr>
            <td colspan="3"><asp:Label ID="Label1" runat="server" Text="Customer Inofrmation Form" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label></td>
        </tr>

        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Customer ID" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="Txtcustid" runat="server"></asp:TextBox></td>
            <td class="auto-style1"></td>
        </tr>

        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Customer Name" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="Txtcustname" runat="server"></asp:TextBox></td>
            <td class="auto-style1"></td>
        </tr>

        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Customer Address" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="Txtcustadd" runat="server"></asp:TextBox></td>
            <td class="auto-style1"></td>
        </tr>

        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Customer City" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="Txtcustcity" runat="server"></asp:TextBox></td>
            <td class="auto-style1"></td>
        </tr>

        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="Customer Contact" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="Txtcustcontact" runat="server" MaxLength="10" ></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter valid contact Number" ForeColor="#CC0000" MaximumValue="10" Type="Integer" ControlToValidate="Txtcustcontact" MinimumValue="10"></asp:RangeValidator>
            </td>
        </tr>

        <tr>
            <td colspan="3"><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" ForeColor="Red"></asp:Button>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
            </td>
        </tr>

        <tr>
            <td colspan="3"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
        </center>
    </div>
    </form>
</body>
</html>
