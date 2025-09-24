using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Services.Description;
namespace project_banking
{
    public partial class Account : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con;
        DataSet ds;
        IDataAdapter da;

        void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
           
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Ragister", con);

            ds = new DataSet();
            da.Fill(ds);



        }


        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void but1_Click(object sender, EventArgs e)
        {
            if (but1.Text == "Submit")
            {
                getcon();

                cmd = new SqlCommand("INSERT INTO Account(Name,Phone,Address,ocuption,Eduction,Gender,Income)VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedItem + "','" + TextBox6.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();


                Response.Write("<script>alert('Account created successfully!');</script>");
            }
            else 
            {

                Response.Write("<script>alert('Account Dosn't  created !');</script>");
            }

        }
    }
}