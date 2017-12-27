/*
        Created By: Brij Mohan Dammani
 *      Object: Search from PNR No
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

public partial class Search_user : System.Web.UI.Page
{
    string strcon = DB.ConnectionString;
    OleDbConnection con;
    OleDbCommand  cmd;
    OleDbDataReader rea;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtpnr.Focus();

    }
    protected void btndisplay_Click1(object sender, EventArgs e)
    {
        string strsql = "Select * from passengerinfo where Pnr = '" + txtpnr.Text.Trim()  + "'";
        con = new OleDbConnection(DB.ConnectionString);
        cmd = new OleDbCommand();

        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        using (rea = cmd.ExecuteReader())
        {
            if (rea.Read())
            {
                pnl2.Visible = true;
                pnl1.Visible = false;
                lblerror.Text = "";
                litpnr.Text = rea[0].ToString();
                litname.Text = rea[1].ToString();
                litph.Text = rea[2].ToString();
                litto.Text = rea[3].ToString();
                litfrom.Text = rea[4].ToString();
                litdate.Text = rea[5].ToString();
                littime.Text = rea[6].ToString();
                littotalseat.Text = rea[7].ToString();
                litseat.Text = rea[8].ToString();
                litrent.Text = rea[9].ToString();
                litagent.Text = rea[10].ToString();
                litstates.Text = rea[11].ToString();


            }
            else
            {
                lblerror.Text = "Plz Enter the Corret PnR Number";
                pnl1.Visible = true;
                pnl2.Visible = false;

            }
        }
        con.Close();
    }
}
