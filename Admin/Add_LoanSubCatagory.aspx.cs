using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace project_banking.Admin
{
    public partial class Add_LoanSubCatagory : System.Web.UI.Page
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
        void fillcategory()
        {
            getcon();
            da = new SqlDataAdapter("Select * from add_LoanCategory", con);
            ds = new DataSet();
            da.Fill(ds);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpadd.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }


        }

       
        void imgupload()
        {
            if (fldimg.HasFile)
            {
                fnm = "~/image/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            txtloannm.Text = "";
            txtdscription.Text = "";
            txtintrest.Text= "";
            txttenure.Text = "";
            txtamount.Text= "";
            txteligibility.Text = "";
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_SubCategory", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                fillcategory();
                fillgrid(); 
            }
        }


        protected void Btnaddloan_Click(object sender, EventArgs e)
        {
            getcon();
            imgupload();

            if (Btnaddloan.Text == "Add Loan")
            {
                cmd = new SqlCommand("INSERT INTO add_SubCategory(CategoryId,LoanName,Description,InterestRate,MaxTenure,MinAmount,LoanImage,Eligibility) VALUES('" + ViewState["id"] + "','" + txtloannm.Text + "','" + txtdscription.Text + "','" + txtintrest.Text + "','" + txttenure.Text + "','" + txtamount.Text + "','" + fnm + "','" + txteligibility.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                fillgrid();
            }
            else
            {
                cmd = new SqlCommand("UPDATE add_SubCategory SET LoanName='" + txtloannm.Text + "',Description='" + txtdscription.Text + "',InterestRate='" + txtintrest.Text + "',MaxTenure='" + txttenure.Text + "',MinAmount='" + txtamount.Text + "',LoanImage='" + fnm + "',Eligibility='" + txteligibility.Text + "' WHERE CategoryId='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                clear();
                Btnaddloan.Text = "Add Loan";
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        
           
            if (e.CommandName == "cmd_dlt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["SubId"] = id;
                getcon();
                cmd = new SqlCommand("DELETE FROM add_SubCategory WHERE CategoryId='" + ViewState["SubId"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected void drpadd_SelectedIndexChanged(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("Select * from add_LoanCategory where CategoryName ='" + drpadd.SelectedItem.ToString() + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            ViewState["id"] = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        }

       
    }
    }








