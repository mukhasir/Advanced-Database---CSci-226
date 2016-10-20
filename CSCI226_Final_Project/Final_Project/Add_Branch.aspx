<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Branch.aspx.cs" Inherits="Add_Branch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Branch</title>
     <link href="StyleSheet/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:100%;">
        <tr style="width:100%;">
            <td style="width:100%;">
                <asp:Label ID="Label1" runat="server" Text="Add Branch" Font-Size="70px" Font-Names="Segoe UI" ForeColor="WhiteSmoke">
                </asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label5" runat="server" Text="" Font-Size="30px" ForeColor="Red" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Branch Name" Font-Size="30px" ForeColor="WhiteSmoke"></asp:Label>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Branch City" Font-Size="30px" ForeColor="WhiteSmoke" style="padding-right:57px;"></asp:Label>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Assets" Font-Size="30px" ForeColor="WhiteSmoke"></asp:Label>&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
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
