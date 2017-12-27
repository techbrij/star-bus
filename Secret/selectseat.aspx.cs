/*
        Created By: Brij Mohan Dammani
 *      Object: To book sheet.
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

public partial class starselectseet2 : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rea;

    protected void Page_Load(object sender, EventArgs e)
    {
        seattable.Visible = false;
        ibnext.Visible = false;
        txtname.Focus();
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
            DepartureTime.Enabled = false;
            departon.Enabled = false;
            Destination.Enabled = false;
            Source.Enabled = false;
            // display Rent 
            strsql = "Select * from Time_list where Station_name = '" + Destination.SelectedItem.Text.ToString() + "'";
            con = new OleDbConnection(DB.ConnectionString);
            cmd = new OleDbCommand();

            con.Open();
            cmd.Connection = con;
            cmd.CommandText = strsql;
            rea = cmd.ExecuteReader();
            if (rea.HasRows == true)
            {
                while (rea.Read())
                {
                    litrent.Text = rea[2].ToString();
                    litrent1.Text = rea[2].ToString();
                    litbusnumber.Text = rea[5].ToString();
                }
            }
        }
        rea.Close();
        con.Close();
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
    protected void ibnext_Click(object sender, ImageClickEventArgs e)
    {
        string[] str = txtseatnumber.Text.Split('s');
        int len = str.Length - 1;
        littotalseat.Text = len.ToString();
        int z = len * int.Parse(litrent.Text.ToString());
        littotalrent.Text = z.ToString();

        Random rnd = new Random();
        Random rnd1 = new Random();

        litpnr.Text = rnd.Next(50000).ToString() + rnd1.Next(548775).ToString();
        if (len == 0)
        {

            //  Label1.Text = "if";
            pnl1.Visible = true;
            pnl2.Visible = false;
            btnSave.Visible = false;
            Response.Redirect("Selectseat.aspx");

        }
        else
        {
            btnSave.Visible = true;
            pnl1.Visible = false;
            pnl2.Visible = true;
            ibnext.Visible = false;
            // Label1.Text = "else";
        }


    }
    protected void seatClick(ImageButton btn)
    {
        ibnext.Visible = true;
        if (btn.ImageUrl == "~/Images/selected_seat_img.gif")
        {
            seattable.Visible = true;
            btn.ImageUrl = "~/Images/available_seat_img.gif";
            if (txtseatnumber.Text.IndexOf(btn.ID.ToString() + ",") > -1)
            {
                txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString() + ",", "");
            }
            else
            {
                txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString(), "");
            }
        }
        else if (btn.ImageUrl == "~/Images/available_seat_img.gif")
        {
            seattable.Visible = true;
            btn.ImageUrl = "~/Images/selected_seat_img.gif";
            if (txtseatnumber.Text.Trim().Length == 0)
            {
                txtseatnumber.Text = btn.ID.ToString();
            }
            else if (txtseatnumber.Text.Trim().EndsWith(","))
            {
                txtseatnumber.Text = txtseatnumber.Text + btn.ID.ToString();
            }
            else
            {
                txtseatnumber.Text = txtseatnumber.Text + "," + btn.ID.ToString();
            }
        }


    }
    protected void s1click(object sender, ImageClickEventArgs e)
    {
        seatClick(s1);
    }
    protected void s2click(object sender, ImageClickEventArgs e)
    {
        seatClick(s2);
    }
    protected void s6click(object sender, ImageClickEventArgs e)
    {
        seatClick(s6);
    }
    protected void s7click(object sender, ImageClickEventArgs e)
    {
        seatClick(s7);
    }
    protected void s12click(object sender, ImageClickEventArgs e)
    {
        seatClick(s12);
    }
    protected void s13click(object sender, ImageClickEventArgs e)
    {
        seatClick(s13);
    }
    protected void s18click(object sender, ImageClickEventArgs e)
    {
        seatClick(s18);
    }
    protected void s19click(object sender, ImageClickEventArgs e)
    {
        seatClick(s19);
    }
    protected void s24click(object sender, ImageClickEventArgs e)
    {
        seatClick(s24);
    }
    protected void s25click(object sender, ImageClickEventArgs e)
    {
        seatClick(s25);
    }
    protected void s31click(object sender, ImageClickEventArgs e)
    {
        seatClick(s31);
    }
    protected void s3click(object sender, ImageClickEventArgs e)
    {
        seatClick(s3);
    }
    protected void s4click(object sender, ImageClickEventArgs e)
    {
        seatClick(s4);
    }
    protected void s5click(object sender, ImageClickEventArgs e)
    {
        seatClick(s5);
    }
    protected void s8click(object sender, ImageClickEventArgs e)
    {
        seatClick(s8);
    }
    protected void s9click(object sender, ImageClickEventArgs e)
    {
        seatClick(s9);
    }

    protected void s10click(object sender, ImageClickEventArgs e)
    {
        seatClick(s10);
    }
    protected void s11click(object sender, ImageClickEventArgs e)
    {
        seatClick(s11);
    }
    protected void s14click(object sender, ImageClickEventArgs e)
    {
        seatClick(s14);
    }
    protected void s15click(object sender, ImageClickEventArgs e)
    {
        seatClick(s15);
    }
    protected void s16click(object sender, ImageClickEventArgs e)
    {
        seatClick(s16);
    }
    protected void s17click(object sender, ImageClickEventArgs e)
    {
        seatClick(s17);
    }
    protected void s20click(object sender, ImageClickEventArgs e)
    {
        seatClick(s20);
    }
    protected void s21click(object sender, ImageClickEventArgs e)
    {
        seatClick(s21);
    }
    protected void s22click(object sender, ImageClickEventArgs e)
    {
        seatClick(s22);

    }

    protected void s23click(object sender, ImageClickEventArgs e)
    {
        seatClick(s23);
    }
    protected void s26click(object sender, ImageClickEventArgs e)
    {
        seatClick(s26);
    }
    protected void s27click(object sender, ImageClickEventArgs e)
    {
        seatClick(s27);

    }
    protected void s28click(object sender, ImageClickEventArgs e)
    {
        seatClick(s28);
    }
    protected void s29click(object sender, ImageClickEventArgs e)
    {
        seatClick(s29);
    }
    protected void s30click(object sender, ImageClickEventArgs e)
    {
        seatClick(s30);
    }


    protected void btnSave_Click(object sender, ImageClickEventArgs e)
    {
        
        OleDbConnection conbal;
        OleDbCommand cmdbal;
        OleDbDataReader reabal;
        string strsqlbal = "select * from AgentBasicInfo where (Agent_id='" + User.Identity.Name.ToString() + "')";
        conbal = new OleDbConnection(DB.ConnectionString);
        cmdbal = new OleDbCommand();
        cmdbal.Connection = conbal;
        cmdbal.CommandText = strsqlbal;
        conbal.Open();
        reabal = cmdbal.ExecuteReader();
        if (reabal.Read())
        {
            string b;
            b = reabal[8].ToString();
            if (int.Parse(b) >= int.Parse(littotalrent.Text.ToString()))
            {
                int cbal;
                int abal;
                abal = int.Parse(b);
                cbal = int.Parse(littotalrent.Text.ToString());

                int rbal = abal - cbal;
                string strupdatebal = "Update AgentBasicInfo set Agent_current_bal = " + rbal.ToString() + "  where (Agent_id ='" + User.Identity.Name.ToString() + "')";
                DB.ExecuteNonQuery(strupdatebal);               



                string[] forsave = txtseatnumber.Text.Split(',');
                string strsql = "select Count(*) from States where((Date='" + departon.SelectedItem.Text
                         + "') and (Time= '" + DepartureTime.SelectedItem.Text
                         + "') and (Station= '" + Destination.SelectedItem.Text
                         + "'))";
               

                if (Convert.ToInt32(DB.ExecuteScaler(strsql)) == 0)
                    {
                       string sqladd = "INSERT into States ([Date],[Time],Station) values('" + departon.SelectedItem.Text
                             + "','" + DepartureTime.SelectedItem.Text
                             + "','" + Destination.SelectedItem.Text + "')";
                        DB.ExecuteNonQuery(sqladd);
                        
                    }
                
 
                    for (int j = 0; j <= forsave.Length - 1; j++)
                    {
                        if (forsave[j].ToString().Trim().Length > 0) { 
                          string strsql1 = "Update States set " + forsave[j].ToString() + " = 'b'  where ((Date='" + departon.SelectedItem.Text.ToString()
                             + "')and(Time='" + DepartureTime.Text.ToString()
                             + "')and (Station= '" + Destination.SelectedItem.Text.ToString()
                             + "'))";
                        DB.ExecuteNonQuery(strsql1);
                        
                        }
                    }
               
                    

                    
                

                 string strsql2 = "Insert Into passengerinfo values('" + litpnr.Text.ToString() + "','" + txtname.Text.ToString() + "'," + txtphone.Text.ToString() + ",'" + Destination.SelectedItem.Text.ToString() + "','" + Source.SelectedItem.Text.ToString() + "','" + departon.SelectedItem.Text.ToString() + "','" + DepartureTime.SelectedItem.Text.ToString() + "','" + littotalseat.Text.ToString() + "','" + txtseatnumber.Text.ToString() + "','" + littotalrent.Text.ToString() + "','" + User.Identity.Name.ToString() + "','Booked')";
                DB.ExecuteNonQuery(strsql2);               

                Response.Cookies["destination"].Value = Destination.SelectedItem.Text.ToString();
                Response.Cookies["pnr"].Value = litpnr.Text.ToString();
                Response.Cookies["name"].Value = txtname.Text.ToString();
                Response.Cookies["ph"].Value = txtphone.Text.ToString();
                Response.Cookies["jodate"].Value = departon.SelectedItem.Text.ToString();
                Response.Cookies["jotime"].Value = DepartureTime.SelectedItem.Text.ToString();
                Response.Cookies["seatnum"].Value = txtseatnumber.Text.ToString();
                Response.Cookies["totalseat"].Value = littotalseat.Text.ToString();
                Response.Cookies["rent"].Value = littotalrent.Text.ToString();
                Response.Cookies["busnumber"].Value = litbusnumber.Text.ToString();
                Response.Redirect("print1.aspx");

            }
            else
            {
                lblerror.Text = "Unsufficient Balance to book ticket.";
            }

        }
    }


}




