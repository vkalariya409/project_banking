using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace project_banking
{

    public partial class Ragister : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Ragister")
            {
                getcon();


                cmd = new SqlCommand("INSERT INTO Ragister (fnm,lnm,email,mobile,password)VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);

                cmd.ExecuteNonQuery();

                clear();
                Response.Redirect("login.aspx");
            }
            //else
            //{
            //    cmd = new SqlCommand("UPDATE Ragister SET fnme='" + TextBox1.Text + "',lnm='" + TextBox2.Text + "',email='" + TextBox3.Text + "',mobile='" + TextBox4.Text + "',Password='" + TextBox5.Text + "' WHERE Id='" + ViewState["id"] + "'", con);
            //    cmd.ExecuteNonQuery();
            //    fillgrid();
            //    clear();
            //    Button1.Text = "Save";
            //}
        }
    }
}