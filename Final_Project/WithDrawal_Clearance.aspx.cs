using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

public partial class WithDrawal_Clearance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["Type"] != "")
            {
                if (Request.QueryString["Type"] == "personal")
                {
                    Label1.Visible = true;
                    Label2.Visible = false;
                    Label4.Visible = true;
                    Label5.Visible = true;
                    Label3.Visible = false;
                    TextBox2.Visible = true;
                    TextBox3.Visible = true;
                    TextBox1.Visible = false;
                    Button1.Text = "Withdraw Amount";
                }
                else if (Request.QueryString["Type"] == "loan")
                {
                    Label1.Visible = false;
                    Label2.Visible = true;
                    Label4.Visible = false;
                    Label5.Visible = false;
                    Label3.Visible = true;
                    TextBox2.Visible = false;
                    TextBox3.Visible = false;
                    TextBox1.Visible = true;
                    Button1.Text = "Clear Loan";
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string constr = ConfigurationManager.ConnectionStrings["csci226ConnectionString"].ConnectionString;
        if (Request.QueryString["Type"] == "personal")
        {
            MySqlConnection conn1 = new MySqlConnection(constr);
            conn1.Open();
            string stm1 = "SELECT balance from account where account_number='" + TextBox2.Text + "'";
            MySqlCommand cmd2 = new MySqlCommand(stm1, conn1);
            MySqlDataReader reader1 = cmd2.ExecuteReader();
            if (reader1.HasRows)
            {
                while (reader1.Read())
                {
                    Label7.Text = TextBox2.Text;
                    Label8.Text = reader1.GetString(0);
                }
            }
            conn1.Close();
            MySqlCommand cmd = new MySqlCommand("withdraw_from_account", new MySqlConnection(constr));
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue(@"in_acnumber", TextBox2.Text);
            cmd.Parameters.AddWithValue(@"in_amount", Convert.ToInt16(TextBox3.Text));
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            MySqlConnection conn = new MySqlConnection(constr);
            conn.Open();
            string stm = "SELECT balance from account where account_number='" + TextBox2.Text + "'";
            MySqlCommand cmd1 = new MySqlCommand(stm, conn);
            MySqlDataReader reader = cmd1.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Label9.Text = reader.GetString(0);
                }
            }
            conn.Close();

        }
        else if (Request.QueryString["Type"] == "loan")
        {
            MySqlConnection conn1 = new MySqlConnection(constr);
            conn1.Open();
            string stm1 = "SELECT amount from loan where loan_number='" + TextBox1.Text + "'";
            MySqlCommand cmd2 = new MySqlCommand(stm1, conn1);
            MySqlDataReader reader1 = cmd2.ExecuteReader();
            if (reader1.HasRows)
            {
                while (reader1.Read())
                {
                    Label7.Text = TextBox2.Text;
                    Label8.Text = reader1.GetString(0);
                }
            }
            conn1.Close();
            string cs = @"server=localhost;user id=root;password=Shazz@123;database=csci226";

            MySqlConnection conn = null;
            try
            {
                conn = new MySqlConnection(cs);
                conn.Open();

                string stm = "Update loan set amount = 0 where loan_number='" + TextBox1.Text + "';";
                MySqlCommand cmd = new MySqlCommand(stm, conn);
                MySqlDataReader reader = cmd.ExecuteReader();
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
            MySqlConnection conn3 = new MySqlConnection(constr);
            conn3.Open();
            string stm2 = "SELECT amount from loan where loan_number='" + TextBox1.Text + "'";
            MySqlCommand cmd1 = new MySqlCommand(stm2, conn3);
            MySqlDataReader reader2 = cmd1.ExecuteReader();
            if (reader2.HasRows)
            {
                while (reader2.Read())
                {
                    Label9.Text = reader2.GetString(0);
                }
            }
            conn3.Close();
        }
    }
}