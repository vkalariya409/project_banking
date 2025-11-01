using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace project_banking
{
    public partial class Profile : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }




        //protected void btnLogout_Click(object sender, EventArgs e)
        //{

        //}


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] != null)
                {
                    string accno = Session["Id"].ToString();
                    getProfile(accno);
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        void getProfile(string accno)
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Account WHERE account_no='" + accno + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblAccountNo.Text = ds.Tables[0].Rows[0]["account_no"].ToString();
                lblName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                lblPhone.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
                lblAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                lblOccupation.Text = ds.Tables[0].Rows[0]["ocupation"].ToString();
                lblEducation.Text = ds.Tables[0].Rows[0]["Eduction"].ToString();
                lblGender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
                lblIncome.Text = ds.Tables[0].Rows[0]["Income"].ToString();
                lblBalance.Text = ds.Tables[0].Rows[0]["Balance"].ToString();
            }
            else
            {
                lblMessage.Text = "Account not found!";
            }
            con.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }


    }
