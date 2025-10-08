using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO.Ports;

namespace project_banking.Admin
{
    public partial class User_detail : System.Web.UI.Page
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
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Account", con);

            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            
            fillgrid();
        }

        protected void GridView1_RowCommand(GridViewCommandEventArgs e)
        {
           
        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {

                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["account_no"] = id;
                getcon();
                cmd = new SqlCommand("DELETE FROM Account WHERE account_no='" + ViewState["account_no"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();

            }

        

        }
    }
}