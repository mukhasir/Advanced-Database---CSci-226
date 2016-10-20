<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WithDrawal_Clearance.aspx.cs" Inherits="WithDrawal_Clearance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Withdrawal/Clearance</title>
    <link href="StyleSheet/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:100%;">
        <tr style="width:100%;">
            <td style="width:100%;">
                <asp:Label ID="Label1" runat="server" Text="Personal Account" Font-Size="60px" Font-Names="Segoe UI" ForeColor="WhiteSmoke">
                </asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Loan Account" Font-Size="60px" Font-Names="Segoe UI" ForeColor="WhiteSmoke">
                </asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Personal Account" Font-Size="30px" ForeColor="WhiteSmoke" style="padding-right:10px;"></asp:Label>&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Text="Personal Amount" Font-Size="30px" ForeColor="WhiteSmoke" style="padding-right:10px;"></asp:Label>&nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="SingleLine" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Loan Account" Font-Size="30px" ForeColor="WhiteSmoke" style="padding-right:10px;"></asp:Label>&nbsp;<asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>
                <%--<asp:Label ID="Label6" runat="server" Text="Loan Amount" Font-Size="30px" ForeColor="WhiteSmoke" style="padding-right:10px;"></asp:Label>&nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="SingleLine" Height="30px" Width="15%" Font-Size="20px"></asp:TextBox>                --%>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <table style="border:2px solid black;">
                    <tr>
                        <td>
                            Account Number
                        </td>
                        <td>
                            Previous Balance
                        </td>
                        <td>
                            Present Balance
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
