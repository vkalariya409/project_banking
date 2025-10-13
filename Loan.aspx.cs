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
    public partial class Loan : System.Web.UI.Page
    {

        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container
        string fnm;
        int p, row;
        PagedDataSource pg = new PagedDataSource();


        void loan(string subId)
        {
            getcon();
            SqlCommand cmd = new SqlCommand("SELECT * FROM add_SubCategory WHERE LoanName = (SELECT LoanName FROM add_LoanCategory WHERE CateId = @Id)", con);
            cmd.Parameters.AddWithValue("@Id", subId);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);


            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                DataList2.DataSource = ds.Tables[0];
                DataList2.DataBind();
            }
            else
            {
                DataList2.DataSource = null;
                DataList2.DataBind();
            }

            ViewState["SubId"] = subId;

            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void loanCetegory()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_LoanCategory", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loanCetegory();
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (e.CommandName == "cmd_add")
            //{
            //    getcon();
            //    da = new SqlDataAdapter("SELECT * FROM Ragister WHERE email='" + Session["user"] + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);

            //    int userid = Convert.ToInt32(ds.Tables[0].Rows[0]["Id"]);
            //    int examid = Convert.ToInt32(e.CommandArgument);

            //    da = new SqlDataAdapter("SELECT * FROM add_Exam_tbl WHERE ExamId='" + examid + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);

            //    string subname = ds.Tables[0].Rows[0][1].ToString();
            //    da = new SqlDataAdapter("SELECT * FROM add_Subject_tbl WHERE SubjectName='" + subname + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);

            //    DateTime AddedDate = DateTime.Now;
            //    cmd = new SqlCommand("INSERT INTO add_MyExam_tbl(UserId,SubjectName,ExamId,AddedDate,Status)VALUES('" + userid + "','" + subname + "','" + examid + "','" + AddedDate + "','Pending')", con);
            //    cmd.ExecuteNonQuery();
            //}
            if (e.CommandName == "cmd_Apply")
            {

                int loanid = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ApplyLoan.aspx ? loanid = " + loanid);
            }
        }

        //protected void Backbtn_Click(object sender, EventArgs e)
        //{
         
        //}

        protected void Backbtn_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_loan")
            {
                string subId = e.CommandArgument.ToString();
                loan(subId);
            }
        }
    }
}



