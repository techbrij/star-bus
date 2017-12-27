/*
        Created By: Brij Mohan Dammani
 *      Object: Login Page
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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Login1.Focus();
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        String qry = String.Format("select Count(*) from UserInfo where UserName='{0}' and Password = '{1}'", Login1.UserName, Login1.Password);
        e.Authenticated = Convert.ToInt32(DB.ExecuteScaler(qry)) > 0;  
    }
}
