/*
        Created By: Brij Mohan Dammani
 *      Object: To create new agent.
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

public partial class CreateAgent : System.Web.UI.Page
{
      
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Text = "";
        CreateUserWizard1. Focus();
    }   
   
    protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        Page.Validate();        

        if (Page.IsValid)
        {
            string qry = "select count(*) from UserInfo where [UserName]='" + CreateUserWizard1.UserName.Trim() + "'";
            if (Convert.ToInt32(DB.ExecuteScaler(qry)) > 0)
            {
                
                lblError.Text = "This user name is not available.";
                e.Cancel = true;
                return; 
            }          

            qry = "insert into UserInfo ([UserName],[Password],SecQues,SecAns,EMail) values ('{0}','{1}','{2}','{3}','{4}')";
            qry = String.Format(qry, CreateUserWizard1.UserName,
                CreateUserWizard1.Password,
                CreateUserWizard1.Question,
                CreateUserWizard1.Answer,
                CreateUserWizard1.Email);
            try
            {
                DB.ExecuteNonQuery(qry);
                Response.Redirect("AgentBasicInfo.aspx?name="+CreateUserWizard1.UserName.ToString()+"");   
            }
            catch (Exception)
            {

            }           
        } 
        e.Cancel = true;
    }
}
