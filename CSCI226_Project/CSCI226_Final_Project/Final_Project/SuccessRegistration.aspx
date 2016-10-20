<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuccessRegistration.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Successful</title>
    <link href="StyleSheet/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;">
        <asp:Label ID="Label1" runat="server" Text="You have sucessfully registered. Click below link to go Home page." Font-Size="80px" Font-Names="Segoe UI" ForeColor="WhiteSmoke"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Go to Home Page</asp:HyperLink>
    </div>
    </form>
</body>
</html>
