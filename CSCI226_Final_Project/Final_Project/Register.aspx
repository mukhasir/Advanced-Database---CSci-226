<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <link href="StyleSheet/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:100%;">
            <tr style="width:100%;">
                <td style="width:100%;">
                    <asp:Label ID="Label1" runat="server" Text="Register" Font-Size="100px" Font-Names="Segoe UI" ForeColor="WhiteSmoke">
                    </asp:Label>
                </td>
            </tr>
            <tr style="width:100%; text-align:center;">
                <td>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Account Registration" style="text-align:center; align-content:center; align-self:center;" Font-Size="40px" Font-Names="Segoe UI" ForeColor="WhiteSmoke">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:100%; text-align:center;">
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Account Number" Font-Size="30px" ForeColor="WhiteSmoke"></asp:Label>&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Branch Name" Font-Size="30px" ForeColor="WhiteSmoke" style="padding-right:57px;"></asp:Label>&nbsp;<asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Customer Name" Font-Size="30px" ForeColor="WhiteSmoke"></asp:Label>&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Customer Street" Font-Size="30px" ForeColor="WhiteSmoke"></asp:Label>&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Customer City" Font-Size="30px" ForeColor="WhiteSmoke"></asp:Label>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="aspButton" Height="40px" Width="15%" Font-Size="20px" OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
