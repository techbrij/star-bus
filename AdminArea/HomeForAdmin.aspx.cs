/*
        Created By: Brij Mohan Dammani
 *      Object: To show basic bus and agents summary report.
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

public partial class AdminArea_HomeForAdmin : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader  rea;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strsql = "Select * from AgentBasicInfo ";
        con = new OleDbConnection(DB.ConnectionString);
        cmd = new OleDbCommand();
        int i=0;
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        rea = cmd.ExecuteReader();
       while (rea.Read())
        {
            i = i + 1; 
           
        }

        litagent.Text = i.ToString();
    }
}
