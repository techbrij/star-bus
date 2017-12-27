/*
        Created By: Brij Mohan Dammani
 *      Object: To print bus ticket.
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

public partial class Secret_print1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
        litagent.Text = User.Identity.Name.ToString();
        litbookingdate.Text = System.DateTime.Now.ToString("D");// System.DateTime.Now.Date.ToString();
        litdestination.Text = Request.Cookies["destination"].Value;
        litpnr.Text = Request.Cookies["pnr"].Value;
        litname.Text = Request.Cookies["name"].Value;
        litph.Text = Request.Cookies["ph"].Value;
        litrent.Text = Request.Cookies["rent"].Value;
        litjourneydate.Text = Request.Cookies["jodate"].Value;
        litjourneytime.Text = Request.Cookies["jotime"].Value;
        litseatnum.Text = Request.Cookies["seatnum"].Value;
        littotalseat.Text = Request.Cookies["totalseat"].Value;
        litbusnumber.Text = Request.Cookies["busnumber"].Value;

        litpnr1.Text = Request.Cookies["pnr"].Value;
        litaname1.Text = User.Identity.Name.ToString();
        litcname1.Text = Request.Cookies["name"].Value;
        litph1.Text = Request.Cookies["ph"].Value;
        litdes1.Text = Request.Cookies["destination"].Value;
        litdate1.Text = Request.Cookies["jodate"].Value;
        littime1.Text = Request.Cookies["jotime"].Value;
        litseat1.Text = Request.Cookies["seatnum"].Value;
        littseat.Text = Request.Cookies["totalseat"].Value;
        litrent1.Text = Request.Cookies["rent"].Value;
            
    }
    
}
