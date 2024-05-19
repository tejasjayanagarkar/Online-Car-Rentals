using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Drawing;
using System.Xml.Linq;
using System.Security.Cryptography;

namespace OnlineCarRent.View
{
    public partial class Login : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source=DESKTOP-VC45F2Q\\SQLEXPRESS;Initial Catalog=test;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static string CName = "";
        public static int CustId;
        protected void SaveBtn_Click1(object sender, EventArgs e)
        {
            
            Response.Write("HEY,");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into LoginTb001 values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            Response.Write("<script>alert('successful in login')</script>");
            Response.Write("\t Login Details Saved Successfull...!");
            
            CName = dt.Rows[0][0].ToString();
            CustId = Convert.ToInt32(dt.Rows[0][2].ToString());

            /*string constr = WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
            SqlConnection con= new SqlConnection(constr);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from LoginTb001 where a username='" + TextBox1.Text + "' and password='" + TextBox2 + "' Mode='" + RadioButtonList1.SelectedValue + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Response.Write("<script>alert('successful in login')</script>");
                }
                else
                {
                    Response.Write("<script>alert('error in login')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);

            }
            string Brand;
            if (ListItem1.Selected == true)
            {
                Brand = ListItem1.Text;
            }
            else
            {
                Brand = ListItem2.Text;
            }

            Response.Write("HEY,");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into LoginTb001 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedValue + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('successful in login')</script>");
            Response.Write("\t Login Details Saved Successfull...!");
            //Response.Redirect("F:\\visual studio C#\\basic c#\\OnlineCarRent\\OnlineCarRent\\View\\Admin\\Customer.aspx");
        }
        
        protected void SaveBtn_Click2(object sender, EventArgs e)
        {
            if (ListItem1.Selected == true)
            {
                if(TextBox1.Value == "Admin" && TextBox2.Value == "Admin")
                {
                    CName = dt.Rows[0].[0].ToString();
                    Response.Write("<script>alert('successful in login')</script>");
                }
                else
                {
                    infoMsg.InnerText = "Invalid Customer";
                }

            }
            else
            {
                string constr = WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
                SqlConnection con= new SqlConnection(constr);
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select CName,CPassword from CustTb01 where CName=('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedValue + "')", con);
                    sql=string.Format(sql,)
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    if (dt.Rows.Count==0)
                    {
                        infoMsg.InnerText = "Invalid Customer";
                        Response.Write("<script>alert('error in login')</script>");
                    }
                    else
                    {
                        CName = dt.Rows[0][0].ToString();
                        Response.Write("<script>alert('successful in login')</script>");
                    }
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }*/
        }
    }
}  
