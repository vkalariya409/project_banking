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
        string fnm;
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
            lblUserId.Text = "";
            imgAvatar.ImageUrl = "~/assets/default-avatar.png";
        }

        void imgupload()
        {
            if (fuAvatar.HasFile)
            {
                fnm = "~/images/" + fuAvatar.FileName;
                fuAvatar.SaveAs(Server.MapPath(fnm));
            }
        }

        void LoadProfile()
        {
            if (Session["account_no"] == null)
            {
                Response.Redirect("login.aspx");
            }

            getcon();
            da = new SqlDataAdapter("SELECT * FROM Account WHERE account_no = @acc", con);
            da.SelectCommand.Parameters.AddWithValue("@acc", Session["account_no"].ToString());
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];
                lblUserId.Text = dr["Id"].ToString();
                txtName.Text = dr["Name"].ToString();
                txtMobile.Text = dr["Phone"].ToString();
                txtAccount.Text = dr["account_no"].ToString();
                txtBalance.Text = dr["balance"].ToString();

                lblName.Text = dr["Name"].ToString();
                lblAccountNo.Text = dr["account_no"].ToString();
                lblBalance.Text = dr["balance"].ToString();

                if (dr["photo"] != DBNull.Value && dr["photo"].ToString() != "")
                {
                    imgAvatar.ImageUrl = dr["photo"].ToString();
                }
                else
                {
                    imgAvatar.ImageUrl = "~/assets/default-avatar.png";
                }
            }

           
         }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            clear();
            Response.Redirect("login.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            getcon();
            imgupload();

            string photoPath = "";
            if (fuAvatar.HasFile)
                photoPath = fnm;

           

            con.Close();

            lblMessage.Text = "Profile updated successfully!";
            lblMessage.CssClass = "msg-success";

            LoadProfile();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["account_no"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    LoadProfile();
                }
            }
    }


    }
}