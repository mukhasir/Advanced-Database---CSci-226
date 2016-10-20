<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="StyleSheet/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function Test()
        {
            document.getElementById("CheckBox2").checked = false;
        }
        function Test1()
        {
            document.getElementById("CheckBox1").checked = false;
        }
        function Test2() {
            document.getElementById("CheckBox4").checked = false;
        }
        function Test3() {
            document.getElementById("CheckBox3").checked = false;
        }
        function Display()
        {
            if (document.getElementById("CheckBox3").checked || document.getElementById("CheckBox4").checked)
            {
                document.getElementById("Payment").style.display = "block";
            }
            else
            {
                document.getElementById("Payment").style.display = "none";
                document.getElementById("CheckBox2").checked = false;
                document.getElementById("CheckBox1").checked = false;
            }
        }
        function PanelDisplay()
        {
            document.getElementById("Panel1").style.display = "block";
            return false;
        }
        function TextBox_Display()
        {
            document.getElementById("TextBox1").style.display = "block";
            if(document.getElementById("TextBox1").value == "")
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Label runat="server" ID="label1" Text="Welcome Home" Font-Size="60px" Font-Names="Segoe UI" ForeColor="WhiteSmoke"></asp:Label>
        <table style="width:100%;">
            <tr style="width:100%;">
                <td colspan="5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" DataKeyNames="account_number" Width="100%" BorderWidth="1px" BorderColor="Black" BorderStyle="Double">
                        <Columns>
                            <asp:BoundField DataField="account_number" HeaderText="account_number" SortExpression="account_number" ReadOnly="True"></asp:BoundField>
                            <asp:BoundField DataField="branch_name" HeaderText="branch_name" SortExpression="branch_name"></asp:BoundField>
                            <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance"></asp:BoundField>
                            <asp:BoundField DataField="Minimum_balance" HeaderText="Minimum_balance" SortExpression="Minimum_balance"></asp:BoundField>
                            <asp:BoundField DataField="Service_charge" HeaderText="Service_charge" SortExpression="Service_charge"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:csci226ConnectionString %>' ProviderName='<%$ ConnectionStrings:csci226ConnectionString.ProviderName %>' SelectCommand="select * from account"></asp:SqlDataSource>
                </td>
            </tr>
            <tr style="width:100%;">
                <td>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Add Account" OnClick="Button2_Click" />
                </td>
                <td>
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="Remove Account" OnClick="Button3_Click" OnClientClick="return TextBox_Display();"/>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="15%" Font-Size="20px" style="display:none;"></asp:TextBox>
                </td>
                <td>
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Add Branch" OnClick="Button4_Click" />
                </td>
                <td>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Make Deposit" onclick="Test2();Display();"/>
                </td>
                <td>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Withdrawal/Clear(For Loan)" onclick="Test3();Display();"/>
                </td>
            </tr>
            <tr id="Payment" style="display:none;width:100%;">
                <td>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Personal" onclick="Test();" Width="100%"/> 
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Loan" onclick="Test1();" Width="100%"/>
                    <asp:Button ID="Button1" runat="server" Text="Go to Payment Portal" OnClick="Button1_Click" Width="100%"/>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button5" runat="server" Text="View Report" OnClientClick="return PanelDisplay();"/>
        <asp:Panel ID="Panel1" runat="server" Width="100%" style="display:none;">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" Width="100%" BorderWidth="1px" BorderColor="Black" BorderStyle="Double">
                <Columns>
                    <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name"></asp:BoundField>
                    <asp:BoundField DataField="branch_city" HeaderText="branch_city" SortExpression="branch_city"></asp:BoundField>
                    <asp:BoundField DataField="branch_name" HeaderText="branch_name" SortExpression="branch_name"></asp:BoundField>
                    <asp:BoundField DataField="account_number" HeaderText="account_number" SortExpression="account_number"></asp:BoundField>
                    <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance"></asp:BoundField>
                    <asp:BoundField DataField="loan_number" HeaderText="loan_number" SortExpression="loan_number"></asp:BoundField>
                    <asp:BoundField DataField="loan_amount" HeaderText="loan_amount" SortExpression="loan_amount"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:csci226ConnectionString %>' ProviderName='<%$ ConnectionStrings:csci226ConnectionString.ProviderName %>' SelectCommand="select * from my_report"></asp:SqlDataSource>
            <asp:HyperLink ID="HyperLink1" runat="server" onclick="document.getElementById('Panel1').style.display = 'none';">Hide Report</asp:HyperLink>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
