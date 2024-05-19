using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineCarRent.View.Customer
{
    public partial class customers : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-VC45F2Q\\SQLEXPRESS;Initial Catalog=test;Integrated Security=True");
        String ProviderName = "System.Data.SqlClient";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Conn = new Models.Functions();
            BindGridView();
        }

        private void BindGridView()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from CustTb01", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                con.Close();

                if ((!IsPostBack) || ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView2.DataSource = ds.Tables[0];
                        GridView2.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into CustTb01 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Customer's Details Saved Successfull...!");
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update CustTb01 Set CName='" + TextBox1.Text + "', CAddress='" + TextBox2.Text + "',CPassword='" + TextBox4.Text + "'WHERE CPhone='" + TextBox3.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Customer's Details Updated Successfully...!");
        }

        protected void DelteBtn_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE from CustTb01 WHERE CPhone='" + TextBox3.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Data Deleted Successfully...");
        }
    }
}