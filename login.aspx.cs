using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.IO.Ports;


namespace project_banking
{
    public partial class login : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;
        SqlConnection con;
        SqlCommand cmd;
        DataSet ds;
        string fnm;
        int i;
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != null && TextBox2.Text != null)
            {
                getcon();
                cmd = new SqlCommand("select count(*) from Ragister where email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());
                if (i > 0)
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("index.html");

                }

                else if (TextBox1.Text == "vkalariya409@gmail.com" && TextBox2.Text == "123456")
                
                {
                    Session["Username"] = TextBox1.Text;
                    Response.Redirect("Admin/Admin.aspx");
                }
            }
            else 
            {
                Response.Write("<script>alert('Invalid Email or password!!!');</script>");

            }
           
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ragister.aspx");
        }
    }
}