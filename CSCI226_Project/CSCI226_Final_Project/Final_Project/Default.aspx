<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CSCI 226 - Term Project</title>
    <link href="StyleSheet/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:100%;">
            <tr style="width:100%;">
                <td style="width:100%;">
                    <asp:Label ID="Label1" runat="server" Text="Login" Font-Size="100px" Font-Names="Segoe UI" ForeColor="WhiteSmoke">
                    </asp:Label>
                </td>
            </tr>
            <tr style="width:100%; text-align:center;">
                <td>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Login Portal" style="text-align:center; align-content:center; align-self:center;" Font-Size="40px" Font-Names="Segoe UI" ForeColor="WhiteSmoke">
                    </asp:Label>
                </td>
            </tr>
            <tr style="width:100%;">
                <td style="width:100%; text-align:center;">
                    <asp:Label ID="Label5" runat="server" Text="Login Unsucessful" Font-Size="30px" ForeColor="Red" Visible="false"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="UserName" Font-Size="30px" ForeColor="WhiteSmoke"></asp:Label>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Password" Font-Size="30px" ForeColor="WhiteSmoke" style="padding-right:10px;"></asp:Label>&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="aspButton" Height="40px" Width="15%" Font-Size="20px" OnClick="Button1_Click"/>
                    <br />
                    <br />
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" Font-Size="20px" ForeColor="Wheat">Sign Up - If new member</asp:HyperLink>--%>
                </td>
            </tr>
            <tr>
                <td style="width:100%; text-align:center; align-content:center;">
                    <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
