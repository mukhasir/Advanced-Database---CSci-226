using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox3.Checked)
        {
            if (CheckBox1.Checked)
            {
                Server.Transfer("Deposit_Loan_Payment.aspx?Type=personal");
            }
            else if (CheckBox2.Checked)
            {
                Server.Transfer("Deposit_Loan_Payment.aspx?Type=loan");
            }
        }
        else if(CheckBox4.Checked)
        {
            if (CheckBox1.Checked)
            {
                Server.Transfer("WithDrawal_Clearance.aspx?Type=personal");
            }
            else if (CheckBox2.Checked)
            {
                Server.Transfer("WithDrawal_Clearance.aspx?Type=loan");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("Register.aspx",true);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("Add_Branch.aspx", true);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string cs = @"server=localhost;user id=root;password=Shazz@123;database=csci226";

        MySqlConnection conn = null;
        try
        {
            conn = new MySqlConnection(cs);
            conn.Open();

            string stm = "Delete from depositor where account_number='"+ TextBox1.Text+"';Delete from account where account_number='"+TextBox1.Text+"';";
            MySqlCommand cmd = new MySqlCommand(stm, conn);
            MySqlDataReader reader = cmd.ExecuteReader();
            Response.Redirect("Home.aspx");
        }
        catch (MySqlException ex)
        {
            Console.WriteLine("Error: {0}", ex.ToString());

        }
        finally
        {

            if (conn != null)
            {
                conn.Close();
            }

        }
    }
}