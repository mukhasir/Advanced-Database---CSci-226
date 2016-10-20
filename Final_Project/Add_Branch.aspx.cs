using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class Add_Branch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["csci226ConnectionString"].ConnectionString;
            MySqlCommand cmd = new MySqlCommand("add_branch", new MySqlConnection(constr));
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue(@"in_branch_name", TextBox1.Text);
            cmd.Parameters.AddWithValue(@"in_branch_city", TextBox2.Text);
            cmd.Parameters.AddWithValue(@"in_assets", Convert.ToInt64(TextBox3.Text));
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            Server.Transfer("SuccessRegistration.aspx", true);
        }
        catch (Exception ex)
        {
            Label5.Text = "Branch Already exists";
            Label5.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}