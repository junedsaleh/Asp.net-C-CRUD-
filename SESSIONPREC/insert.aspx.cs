using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class insert : System.Web.UI.Page
{
    public static SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\uzair\Documents\clg.mdf;Integrated Security=True;Connect Timeout=30";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into login(username,password,city,phone) values(@name,@pass,@city,@phone)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@name", username.Text);
        cmd.Parameters.AddWithValue("@pass", password.Text);
        cmd.Parameters.AddWithValue("@city", city.Text);
        cmd.Parameters.AddWithValue("@phone",phone.Text);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i > 0)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Write("Not Inserted");
        }
    }
}