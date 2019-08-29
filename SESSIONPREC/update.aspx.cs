using System;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class update : System.Web.UI.Page
{
    public static SqlCommand cmd;
    public static SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl1.Text = Session["uname"].ToString();
        if (!IsPostBack)
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\uzair\Documents\clg.mdf;Integrated Security=True;Connect Timeout=30");
            FillGrid();
        }
    }
    private void FillGrid()
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from login where username='" + Session["uname"] + "' ";
        cmd.Connection = con;
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        gvlogin.DataSource = dr;
        gvlogin.DataBind();
        con.Close();
    }



    protected void insert_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into EmpDetails(Empid,Empname,Empjoindate,Empsalary,Empcity) values(@id,@name,@date1,@salary,@city)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(id.Text));
        cmd.Parameters.AddWithValue("@name", name.Text);
        cmd.Parameters.AddWithValue("@date1", date.Text);
        cmd.Parameters.AddWithValue("@salary", salary.Text);
        cmd.Parameters.AddWithValue("@city", city.Text);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i > 0)
        {
            Response.Write("Inserted");
        }
        else
        {
            Response.Write("Not Inserted");
        }
        FillGrid1();
        FillGrid2();
    }
    private void FillGrid1()
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from EmpDetails";
        cmd.Connection = con;
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        gvlogin1.DataSource = dr;
        gvlogin1.DataBind();
        con.Close();
    }

    private void FillGrid2()
    {
        SqlDataAdapter adapt = new SqlDataAdapter("Select * from EmpDetails", con);
        DataTable dt = new DataTable();
        adapt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }



    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)

        {

            //If Salary is less than 10000 than set the row Background Color to Cyan  

            if (Convert.ToInt32(e.Row.Cells[3].Text) < 10000)

            {

                e.Row.BackColor = Color.Cyan;

            }

        }
    }
}