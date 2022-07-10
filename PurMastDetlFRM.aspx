<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurMastDetlFRM.aspx.cs" Inherits="PurMastDetlFRM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 34px;
        }
    </style>
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
    <table bgcolor="LightSalmon">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Purchase Master" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Purchase Bill No " Font-Bold="True"></asp:Label>  <asp:TextBox ID="TxtPbno" runat="server"></asp:TextBox></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Purchase Date" Font-Bold="True"></asp:Label>  <asp:TextBox ID="TxtPdate" runat="server" TextMode="Date"></asp:TextBox></td>
            <td></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Supplier ID"></asp:Label>
                <asp:TextBox ID="TxtSupid" runat="server"></asp:TextBox></td>
            <td>
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click2">Supplier Name</asp:LinkButton>
                <asp:TextBox ID="TxtSupname" runat="server"></asp:TextBox></td>
            <td>
                <asp:Label ID="Lblbaldue" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>

        
           </table>
          </center>
    </div>
    
        <div>
            <center>
            <table bgcolor="LightSalmon">
                
                <tr>
                    <td>  <asp:Label ID="Label11" runat="server" Text="Product ID" Font-Bold="True"></asp:Label></td>
        <td>
            <asp:Label ID="Label12" runat="server" Text="Product Name" Font-Bold="True"></asp:Label></td>      
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Category" Font-Bold="True"></asp:Label></td>   
                     <td>
                         <asp:Label ID="Label14" runat="server" Text="Unit" Font-Bold="True"></asp:Label></td>
                    <td>  <asp:Label ID="Label15" runat="server" Text="MRP" Font-Bold="True"></asp:Label></td>
        <td>
            <asp:Label ID="Label16" runat="server" Text="QTY" Font-Bold="True"></asp:Label></td>      
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="Rate" Font-Bold="True"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label18" runat="server" Text="AMT" Font-Bold="True"></asp:Label></td>
                
                </tr>
                 
                <tr>

                    <td>  <asp:TextBox ID="Txtpid1" runat="server"></asp:TextBox> </td>
        <td> 
            <asp:LinkButton ID="Txtpname1" runat="server" OnClick="LinkButton4_Click">Txtpname1</asp:LinkButton>
                    </td>      
                    <td> <asp:TextBox ID="Txtcat1" runat="server"></asp:TextBox></td>   
                     <td> <asp:TextBox ID="Txtunit1" runat="server"></asp:TextBox></td>
                    <td>  <asp:TextBox ID="Txtmrp1" runat="server"></asp:TextBox> </td>
        <td> <asp:TextBox ID="Txtqty1" runat="server"></asp:TextBox></td>      
                    <td> <asp:TextBox ID="Txtrate1" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:LinkButton ID="Txtamt1" runat="server" OnClick="Txtamt1_Click">0</asp:LinkButton>
                    </td>
                    <td class="auto-style1">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add</asp:LinkButton></td>

                </tr>
                  <tr>
                    <td>  <asp:TextBox ID="Txtpid2" runat="server"></asp:TextBox> </td>
        <td> 
            <asp:LinkButton ID="Txtpname2" runat="server" OnClick="Txtpname2_Click">Txtpname2</asp:LinkButton>
                      </td>      
                    <td> <asp:TextBox ID="Txtcat2" runat="server"></asp:TextBox></td>   
                     <td> <asp:TextBox ID="Txtunit2" runat="server"></asp:TextBox></td>
                    <td>  <asp:TextBox ID="Txtmrp2" runat="server"></asp:TextBox> </td>
        <td> <asp:TextBox ID="Txtqty2" runat="server"></asp:TextBox></td>      
                    <td> <asp:TextBox ID="Txtrate2" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:LinkButton ID="Txtamt2" runat="server" OnClick="Txtamt2_Click">0</asp:LinkButton>
                      </td>
                      <td class="auto-style1">
                          <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Add</asp:LinkButton>
                      </td>

                </tr>
              
                  <tr>
                    <td>  <asp:TextBox ID="Txtpid3" runat="server"></asp:TextBox> </td>
        <td> 
            <asp:LinkButton ID="Txtpname3" runat="server" OnClick="Txtpname3_Click">Txtpname3</asp:LinkButton>
                      </td>      
                    <td> <asp:TextBox ID="Txtcat3" runat="server"></asp:TextBox></td>   
                     <td> <asp:TextBox ID="Txtunit3" runat="server"></asp:TextBox></td>
                    <td>  <asp:TextBox ID="Txtmrp3" runat="server"></asp:TextBox> </td>
        <td> <asp:TextBox ID="Txtqty3" runat="server"></asp:TextBox></td>      
                    <td> <asp:TextBox ID="Txtrate3" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:LinkButton ID="Txtamt3" runat="server" OnClick="Txtamt3_Click">0</asp:LinkButton>
                      </td>
                      <td class="auto-style1">
                          <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Add</asp:LinkButton>
                      </td>

                </tr>
                <tr>
                    <td></td>
                    <td>   </td>
        <td></td>      
                    <td> </td>   
                     <td> </td>
                    <td> </td>
        <td> </td>      
                    <td> <asp:Label ID="Label8" runat="server" Text="Discount" Font-Bold="True"></asp:Label></td>
                   <td>
                       <asp:TextBox ID="TxtDiscount" runat="server"></asp:TextBox>
                       </td>
                </tr>

                <tr><td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                          <td> 
                              <asp:LinkButton ID="LinkButton" runat="server" OnClick="LinkButton4_Click1">Total Amount</asp:LinkButton>
                    </td>
                   <td>
                       <asp:TextBox ID="TxtTotalAmt" runat="server"></asp:TextBox>
                    </td>
                </tr>
              
                <tr>
                    
                    <td colspan="9">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" />  <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td>
                </tr>
                
            </table>
        </div>
        </center>
    </form>
</body>
</html>
