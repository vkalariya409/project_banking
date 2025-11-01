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
    public partial class ApplyLoan : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con;
        DataSet ds;
        IDataAdapter da;
        string Name = "";
        void clear()
        {
            txtnm.Text = "";
            txteml.Text = "";
            txtphone.Text = "";
            txtAmount.Text = "";
            txtduration.Text = "";
            txtpurpose.Text = "";
            txtAnul.Text = "";
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fileupload()
        {
            if (FileUpload1.HasFile)
            {
                Name = "~/Uploads/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(Name));
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fileupload();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (sub_btn.Text == "Submit")
            {
                getcon();


                cmd = new SqlCommand("INSERT INTO Apply_Loan (Name,email,Phone,Amount,Duration,purpose,income,Adharcard)VALUES('" + txtnm.Text + "','" + txteml.Text + "','" + txtphone.Text + "','" + txtAmount.Text + "','" + txtduration.Text + "','" + txtpurpose.Text + "','" + txtAnul.Text + "','" +Name+ "')", con);


                cmd.ExecuteNonQuery();

                clear();
                Response.Redirect("index.aspx");
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if (Button1.Text == "Register")
        //    {

        //    }

    }

}