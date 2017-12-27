/*
        Created By: Brij Mohan Dammani
 *      Object: To recover password.
*/
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.OleDb;

public partial class Forget_password : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rea;


    protected void Page_Load(object sender, EventArgs e)
    {
        txtname.Focus();
    }
    protected void btnque_Click(object sender, EventArgs e)
    {

        string strsql = "Select * from UserInfo where UserName = '" + txtname.Text.ToString() + "'";
        con = new OleDbConnection(DB.ConnectionString);
        cmd = new OleDbCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        using (rea = cmd.ExecuteReader())
        {
            if (rea.Read())
            {
                pnl1.Visible = false;
                pnl2.Visible = true;
                txtans.Focus();
                //lithold.Text = rea["UserName"].ToString();

                litname.Text = txtname.Text.ToString();
                litque.Text = rea["SecQues"].ToString();

                ViewState["SecAns"] = rea["SecAns"].ToString();
                ViewState["pwd"] = rea["Password"].ToString();
            }
            else
            {
                literror.Visible = true;
                literror.Text = "Enter the Correct User Name";
            }
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtans.Text == ViewState["SecAns"].ToString())
        {
            pnl2.Visible = false;
            pnl3.Visible = true;
            btnnext.Focus();
            litname1.Text = txtname.Text.ToString();
            litpass.Text = ViewState["pwd"].ToString();
        }
        else
        {
            literror2.Text = "Enter the Correct Ques Ans ";
        }


    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}
