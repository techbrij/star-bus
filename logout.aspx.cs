/*
        Created By: Brij Mohan Dammani
 *      Object: To logout. clears cookies, session and cache.
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetNoStore();
        Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
        Session.Abandon();
        FormsAuthentication.SignOut();
        Response.Redirect(FormsAuthentication.LoginUrl);
    }
}
