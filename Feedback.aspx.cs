/*
        Created By: Brij Mohan Dammani
 *      Object: To give feedback.
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

public partial class Feedbackajax : System.Web.UI.Page
{
    OleDbCommand cmd;
    OleDbConnection con;
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        txtname.Focus();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
         string strsql = "Insert Into feedback values('" + txtname.Text.ToString() + "','" + txtemail.Text.ToString() + "'," + txtph.Text.ToString() + ",'" + dlsubject.SelectedItem.Text.ToString() + "','" + txtcomment.Text.ToString() + "','other')";
        con = new OleDbConnection(DB.ConnectionString);
        cmd = new OleDbCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        cmd.ExecuteNonQuery();
        Response.Redirect("index.aspx");
    }
}
