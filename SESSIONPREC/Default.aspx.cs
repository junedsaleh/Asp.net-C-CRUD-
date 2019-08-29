using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\uzair\Documents\clg.mdf;Integrated Security=True;Connect Timeout=30");
    }

    protected void login_Click(object sender, EventArgs e)
    {
        string query = "select * from login where username='" + username.Text + "' and password='" + passowrd.Text + "' ";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.Load(dr);
        if (dt.Rows.Count > 0)
        {
            Session["uname"] = username.Text;
            Response.Redirect("home.aspx");
        }
        else
        {
            //Response.Redirect("Default.aspx");
            Response.Write("UserName and password Invalid");
           
        }

        con.Close();
    }
}