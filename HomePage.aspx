<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

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
<body style="height: initial" style="background-image: url('E:\Study\Prj Code\TMaterial\IMG\banner.jpg');">
    <form id="form1" runat="server">
        <div>
            <img src="IMG/Logo1.jpg" style="height: 198px; width: 1533px ">
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
        <br />
        <br />
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" OnAdCreated="AdRotator1_AdCreated" />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
