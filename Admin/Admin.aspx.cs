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
    public partial class WebForm1 : System.Web.UI.Page
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
            da = new SqlDataAdapter("SELECT * FROM Ragister", con);

            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        void select()
        {
            //getcon();
            //da = new SqlDataAdapter("SELECT * FROM Ragister where Id='" + ViewState["id"] + "'", con);

            //ds = new DataSet();
            //da.Fill(ds);

            //paring

            //txtnm.Text = ds.Tables[0].Rows[0][1].ToString();
            //txteml.Text = ds.Tables[0].Rows[0][3].ToString();
            //drpct.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
            //txtpass.Text = ds.Tables[0].Rows[0][5].ToString();
            //rdbgen.Text = ds.Tables[0].Rows[0][2].ToString();


        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            //imgupload();
            fillgrid();
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                getcon();
                cmd = new SqlCommand("DELETE FROM Ragister WHERE Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
            
        }
    }
}






	

        