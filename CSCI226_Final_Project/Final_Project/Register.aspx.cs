using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["csci226ConnectionString"].ConnectionString;
            MySqlCommand cmd = new MySqlCommand("add_account_user", new MySqlConnection(constr));
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue(@"in_acnumber", TextBox4.Text);
            cmd.Parameters.AddWithValue(@"in_branch_name", TextBox5.Text);
            cmd.Parameters.AddWithValue(@"in_customer_name", TextBox6.Text);
            cmd.Parameters.AddWithValue(@"in_customer_street", TextBox3.Text);
            cmd.Parameters.AddWithValue(@"in_customer_city", TextBox1.Text);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            Server.Transfer("SuccessRegistration.aspx", true);
        }
        catch (Exception ex)
        {
            //MessageBox.Show(ex.Message);
        }
    }
}