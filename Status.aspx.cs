/*
        Created By: Brij Mohan Dammani
 *      Object: To show current status of booked sheet in bus 
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

public partial class stt : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rea;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            pnl1.Visible = false;
            logoIndicator.Visible = false; 
        }
    }


    protected void departon_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (departon.SelectedItem.Text.ToString() == "--Select--")
        {
            DepartureTime.Items.Clear();
        }
        else
        {
            DepartureTime.Items.Clear();
            string strsql = "Select * from Time_list where Station_name = '" + Destination.SelectedItem.Text.ToString() + "'";
            con = new OleDbConnection(DB.ConnectionString);
            cmd = new OleDbCommand();
            System.DateTime jtime = new DateTime();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = strsql;
            rea = cmd.ExecuteReader();
            DepartureTime.Items.Add("--Select--");
            while (rea.Read())
            {
                jtime = System.DateTime.Parse(rea["Time"].ToString());
                if (departon.SelectedItem.Text.ToString() == System.DateTime.Today.ToShortDateString())
                {
                    if (jtime > System.DateTime.Now)
                    {
                        DepartureTime.Items.Add(rea["Time"].ToString());

                    }
                }
                else
                {
                    DepartureTime.Items.Add(rea["Time"].ToString());
                }
            }
            con.Close();
            
        }
    }
    protected void Destination_SelectedIndexChanged(object sender, EventArgs e)
    {

        departon.Items.Clear();
        departon.Items.Add("--Select--");
        departon.Items.Add(System.DateTime.Today.ToShortDateString());
        departon.Items.Add(System.DateTime.Now.AddDays(1.00).ToShortDateString());
        departon.Items.Add(System.DateTime.Now.AddDays(2.00).ToShortDateString());       

    }

    protected void DepartureTime_SelectedIndexChanged(object sender, EventArgs e)
    {
        
            string strsql;
            if (DepartureTime.SelectedItem.Text.ToString() != "--Select--")
            {
                seattable.Visible = true;             
                Source.Enabled = false;
              
            }
            pnl1.Visible = true;
            logoIndicator.Visible = true;
            for (int j = 1; j <= 31; j++)
            {
                string s = "s" + j;
                
                    ImageButton img = (ImageButton)pnl1.FindControl(s.ToString());
                    img.ImageUrl = "~/Images/available_seat_img.gif";
             }
            
            strsql = "Select * from States where ((date = '" + departon.SelectedItem.Text.ToString() + "') and (Time ='" + DepartureTime.SelectedItem.Text.ToString() + "')and (Station='" + Destination.SelectedItem.Text.ToString() + "'))";
            con = new OleDbConnection(DB.ConnectionString);
            cmd = new OleDbCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = strsql;
            rea = cmd.ExecuteReader();
            while (rea.Read())
            {
                for (int j = 1; j <= 31; j++)
                {
                    string s = "s" + j;
                    if (rea[s.ToString()].ToString() == "b")
                    {
                        ImageButton img = (ImageButton)pnl1.FindControl(s.ToString());
                        img.ImageUrl = "~/Images/booked_seat_img.gif";
                        img.Enabled = false;
                      
                    }

                }
            }
        }
    
}
