using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace project_banking.Admin
{
    public partial class Add_LoanCatagory : System.Web.UI.Page
    {

        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container
        string fnm;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void imgupload()
        {
            if (Fldimg.HasFile)
            {
                fnm = "~/image/" + Fldimg.FileName;
                Fldimg.SaveAs(Server.MapPath(fnm));
            }
        }

        void clear()
        {
            txtcatname.Text = "";
            txtdescription.Text = "";
            txteligibility.Text = "";
            txtintrest.Text = "";
            txttenure.Text = "";
            
        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_LoanCategory", con);

            ds = new DataSet();
            da.Fill(ds);

            gvloan.DataSource = ds;
            gvloan.DataBind();

        }

        void select()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Loantbl where CateId='" + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            //paring

            txtcatname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtdescription.Text = ds.Tables[0].Rows[0][2].ToString();
            txtintrest.Text = ds.Tables[0].Rows[0][3].ToString();
            txttenure.Text = ds.Tables[0].Rows[0][4].ToString();
            txteligibility.Text = ds.Tables[0].Rows[0][5].ToString();

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
            imgupload();
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
            
        //}

        protected void btnadd_Click(object sender, EventArgs e)
        {
            if (btnadd.Text == "Add Category")
            {
                getcon();
                imgupload();
                //float ir = Convert.tofloat(txtintrest.Text);  
                int tenure = Convert.ToInt32(txttenure.Text);

               
                cmd = new SqlCommand("INSERT INTO add_LoanCategory(CategoryName,Description,InterestRate,MaxTenure,Eligibility,Image)VALUES('" + txtcatname.Text + "','" + txtdescription.Text + "','"+txtintrest.Text+"','"+tenure+"','"+txteligibility.Text+"','" + fnm + "')", con);
                
                cmd.ExecuteNonQuery();

                clear();
                Response.Redirect("Add_LoanSubCatagory.aspx");
            }
            else
            {
                cmd = new SqlCommand("UPDATE add_LoanCategory SET CategoryName='" + txtcatname.Text + "',Description='" + txtdescription.Text + "',InterestRate='" + txtintrest.Text + "',MaxTenure='" + txttenure.Text + "',Eligibility='" + txteligibility.Text + "',Image='"+fnm+"' WHERE CateId='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                clear();
                btnadd.Text = "Save";
            }
        }

        protected void gvloan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["CateId"] = id;
                getcon();
                cmd = new SqlCommand("DELETE FROM add_LoanCategory WHERE CateId='" + ViewState["CateId"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }
    }
}







