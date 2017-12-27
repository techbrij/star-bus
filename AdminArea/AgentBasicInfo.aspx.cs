/*
        Created By: Brij Mohan Dammani
 *      Object: for individual agent's basic information.
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

public partial class AgentBasicInfo : System.Web.UI.Page
{
    OleDbCommand cmd;
    OleDbConnection con; 
    protected void Page_Load(object sender, EventArgs e)
    {
        txtName.Focus();
    }
    protected void btnfinish_Click(object sender, EventArgs e)
    {        
        string strsql = "Insert Into AgentBasicInfo values('" +Request["name"].ToString() + "','" + txtName.Text.ToString() + "','" + txtfname.Text.ToString() + "','" + txtshopname.Text.ToString() + "','" + txtshopadd.Text.ToString() + "','" + txtcity.Text.ToString() + "'," + txtph.Text.ToString() + "," + txtmobile.Text.ToString() + "," + txtdeposit.Text.ToString() + ")";
        using (con = new OleDbConnection(DB.ConnectionString))
        {
            cmd = new OleDbCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = strsql;
            cmd.ExecuteNonQuery();
        
        }
        Response.Redirect("HomeForAdmin.aspx");
    }
}
