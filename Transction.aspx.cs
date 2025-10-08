using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_banking
{
    public partial class Transction : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con;
        DataSet ds;
        IDataAdapter da;
        int depositAmount, senderBalance, transferAmount, receiverBalance, currentBalance, withdrawAmount, newBalance;

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("SELECT balance FROM Account WHERE account_no='" + TextBox1.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblMessage.Text = "Balance: " + ds.Tables[0].Rows[0]["balance"].ToString();
            }
            else
            {
                lblMessage.Text = "Account not found!";
            }
            con.Close();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
   
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            getcon();
            da = new SqlDataAdapter("SELECT balance FROM Account WHERE account_no='" + TextBox2.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                 currentBalance = Convert.ToInt32(ds.Tables[0].Rows[0]["balance"]);
                 withdrawAmount = Convert.ToInt32(TextBox3.Text);

                if (withdrawAmount <= currentBalance)
                {
                    newBalance = currentBalance - withdrawAmount;
                    cmd = new SqlCommand("UPDATE Account SET balance='" + newBalance + "' WHERE account_no='" + TextBox2.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "Withdraw successful! New Balance: " + newBalance;
                }
                else
                {
                    lblMessage.Text = "Insufficient balance!";
                }
            }
            else
            {
                lblMessage.Text = "Account not found!";
            }
            con.Close();
            clear();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("SELECT balance FROM Account WHERE account_no='" + TextBox4.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                 currentBalance = Convert.ToInt32(ds.Tables[0].Rows[0]["balance"]);
                 depositAmount = Convert.ToInt32(TextBox5.Text);

                newBalance = currentBalance + depositAmount;
                cmd = new SqlCommand("UPDATE Account SET balance='" + newBalance + "' WHERE account_no='" + TextBox4.Text + "'", con);
                cmd.ExecuteNonQuery();

                lblMessage.Text = "Deposit successful! New Balance: " + newBalance;
            }
            else
            {
                lblMessage.Text = "Account not found!";
            }
            con.Close();
            clear();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("SELECT balance FROM Account WHERE account_no='" + TextBox6.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                senderBalance = Convert.ToInt32(ds.Tables[0].Rows[0]["balance"]);
                transferAmount = Convert.ToInt32(TextBox8.Text);

                if (transferAmount <= senderBalance)
                {
                    // Deduct from sender
                     newBalance = senderBalance - transferAmount;
                    cmd = new SqlCommand("UPDATE Account SET balance='" + newBalance + "' WHERE account_no='" + TextBox6.Text + "'", con);
                    cmd.ExecuteNonQuery();

                    // Add to receiver
                    da = new SqlDataAdapter("SELECT balance FROM Account WHERE account_no='" + TextBox7.Text + "'", con);
                    DataSet dsReceiver = new DataSet();
                    da.Fill(dsReceiver);

                    if (dsReceiver.Tables[0].Rows.Count > 0)
                    {
                         receiverBalance = Convert.ToInt32(dsReceiver.Tables[0].Rows[0]["balance"]);
                         newBalance = receiverBalance + transferAmount;

                        cmd = new SqlCommand("UPDATE Account SET balance='" + newBalance + "' WHERE account_no='" + TextBox7.Text + "'", con);
                        cmd.ExecuteNonQuery();

                        lblMessage.Text = "Transfer successful!";
                    }
                    else
                    {
                        lblMessage.Text = "Receiver account not found!";
                    }
                }
                else
                {
                    lblMessage.Text = "Insufficient balance!";
                }
            }
            else
            {
                lblMessage.Text = "Sender account not found!";
            }
            con.Close();
            clear();

        }
    }

}
