<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/IMG/map.jpg">
            <asp:CircleHotSpot HotSpotMode="Navigate" NavigateUrl="https://www.google.co.in/maps/place/Shri+Samarth+Krupa+Ladies+Tailor+and+Materials/@21.049105,75.0505506,17z/data=!3m1!4b1!4m5!3m4!1s0x3bd92d3f7b0d966d:0xf0b61eee6fd01346!8m2!3d21.049105!4d75.0527393" PostBackValue="https://www.google.co.in/maps/place/Shri+Samarth+Krupa+Ladies+Tailor+and+Materials/@21.049105,75.0505506,17z/data=!3m1!4b1!4m5!3m4!1s0x3bd92d3f7b0d966d:0xf0b61eee6fd01346!8m2!3d21.049105!4d75.0527393" Radius="200" Target="_parent" X="106" Y="706" />
        </asp:ImageMap></div>
    </form>
</body>
</html>
