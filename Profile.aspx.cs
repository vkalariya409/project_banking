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

        void clear()
        {
            txtName.Text = "";
        
            txtMobile.Text = "";
            txtBalance.Text = "";
            txtAccount.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProfile();
            }

        

            }
        private void LoadProfile()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Account", con);
            ds = new DataSet();
            da.Fill(ds);

          
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("UPDATE Account SET  Name='" + txtName + "',Phone='" + txtMobile.Text + "',account_no='" + txtAccount.Text + "',balance='" + txtBalance.Text + "'  WHERE Id='" + ViewState["account_no"] + "'", con);
            cmd.ExecuteNonQuery();
            
            clear();
            btnEdit.Text = "Update";
        }


    }
}