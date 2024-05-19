using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace OnlineCarRent.View.Admin
{
    public partial class Rents : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-VC45F2Q\\SQLEXPRESS;Initial Catalog=test;Integrated Security=True");
        String ProviderName = "System.Data.SqlClient";


        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            TextBox1.Text = Request.QueryString["Id"].ToString();
            TextBox2.Text = Request.QueryString["LNumber"].ToString();
            TextBox3.Text = Request.QueryString["Brand"].ToString();
            TextBox4.Text = Request.QueryString["Model"].ToString();
            TextBox5.Text = Request.QueryString["Price"].ToString();
            TextBox6.Text = Request.QueryString["Color"].ToString();*/
            BindGridView();
        }
        private void BindGridView()
        {
            //connection (ADO.NET) Asp and Sql
            //connection


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from CarTbl001", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                con.Close();

                if ((!IsPostBack) || ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds.Tables[0];
                        GridView1.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Rents values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Rents Details Saved Successfull...!");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Rents Set where Rentid='" + TextBox1.Text + "', Car='" + TextBox2.Text + "',RentDate='" + TextBox4.Text + "','ReturnDate'" +TextBox5.Text+"',Fees='"+TextBox6.Text+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Rent Details Updated Successfully...!");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from Rents WHERE Rentid='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Data Deleted Successfully...!");
        }
    }
}