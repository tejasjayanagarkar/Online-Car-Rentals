using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

                //Customers cars

namespace OnlineCarRent.View.Customer
{
    public partial class Cars : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-VC45F2Q\\SQLEXPRESS;Initial Catalog=test;Integrated Security=True ");

        //connection between SQL AND ASP.NET
        //Models.Functions Conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Conn = new Models.Functions();
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
            /*
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from CarTbl001", con);
        GridView.DataSource = cmd.ExecuteReader();
        GridView.DataBind();
        con.Close();*/

        }
        protected void BookBtn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-VC45F2Q\\SQLEXPRESS;Initial Catalog=test;Integrated Security=True");
            
            TimeSpan DDays = Convert.ToDateTime(ReturnDate.Text) - DateTime.Today.Date;
            int Days = DDays.Days;
            Fees = DPrice * Days;
            int flag = 1;
            try
            {
                if(flag==0)
                {
                    //Response.Write("Missing Information");
                    InfoMsg.InnerText="Missing Information";
                }
                else
                {
                    /*
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into RentTb001 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("Rents Details Saved Successfull...!");
                    */
                    
                    string Query = "insert into RentTbl001 Values('{0}',{1},'{2}','{3}',{4})";
                    Query = string.Format(Query, GridView1.SelectedRow.Cells[1].Text, CustName,RentDate,RetDate,Fees);

                    BindGridView();
                    InfoMsg.InnerText = "Car Selected Go For Payments\t" + GridView1.SelectedRow.Cells[1].Text;
                    
                }
                
            }
            catch (Exception ex)
            {
                //throw;
                InfoMsg.InnerText=ex.Message;
            }
        }
        string LNumber, RentDate, RetDate;
        int Fees=0,DPrice,Customers;

   

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
            GridViewRow Gr = GridView2.SelectedRow;
            Response.Redirect("carbook.aspx?id=" + Gr.Cells[1].Text + "&LNumber=" + Gr.Cells[2].Text + "&Brand=" + Gr.Cells[3].Text + "&Model=" + Gr.Cells[4].Text + "&Price=" + Gr.Cells[5].Text + "&Color=" + Gr.Cells[6].Text);
            */

            LNumber = GridView1.SelectedRow.Cells[1].Text;
            RentDate = System.DateTime.Today.Date.ToString();
            RetDate = ReturnDate.Text;
            DPrice = Convert.ToInt32(GridView1.SelectedRow.Cells[4].Text);
        }

        
    }
}