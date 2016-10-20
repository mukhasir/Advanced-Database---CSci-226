using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = @"server=localhost;user id=root;password=Shazz@123;database=csci226";

        MySqlConnection conn = null;
        try
        {
            conn = new MySqlConnection(cs);
            conn.Open();

            string stm = "SELECT user_name,password from user_info";
            MySqlCommand cmd = new MySqlCommand(stm, conn);
            MySqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    if (reader.GetString(0) == TextBox1.Text && reader.GetString(1) == TextBox2.Text)
                    {
                        Server.Transfer("Home.aspx", true);
                    }
                    else
                    {
                        Label5.Visible = true;
                    }
                }
            }
            else
            {
                
            }
            //GridView1.DataSource = reader;
            //GridView1.DataBind();

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