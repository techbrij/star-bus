/*
        Created By: Brij Mohan Dammani
 *      Object: To deposit amount in agent's account.
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

public partial class AdminArea_Deposit : System.Web.UI.Page
{
     OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rea;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtname.Focus();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string strsql = "Select * from AgentBasicInfo where Agent_id = '" + txtname.Text.ToString() + "'";
        con = new OleDbConnection(DB.ConnectionString);
        cmd = new OleDbCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        rea = cmd.ExecuteReader();
        if (rea.Read())
        {
            int dbal = int.Parse(txtamount.Text.ToString());
            int obal = int.Parse(rea[8].ToString());
            int cbal = dbal + obal;
            string strsql1 = "Update AgentBasicInfo set Agent_current_bal = "+cbal.ToString() +" where (Agent_id='"+txtname.Text.ToString()+"')";  
            OleDbCommand cmd1 = new OleDbCommand();
            OleDbConnection con1 = new OleDbConnection(DB.ConnectionString);
            con1.Open();
            cmd1.Connection = con1;
            cmd1.CommandText = strsql1;
            cmd1.ExecuteNonQuery();
       //     lblerror.Text = "Deposti Your Amount  ";
            pnl1.Visible = false;
            pnl2.Visible = true;
        }
        else
        {
            lblerror.Text = "plz Enter the Correct Agent Id ";
        }

    }
}
