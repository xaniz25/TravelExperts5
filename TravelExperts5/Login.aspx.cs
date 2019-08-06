/*
 * Victor Lantion
 * Purpose: On login click, checks for a match in database and redirects page. 
 */

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpertsData;

namespace TravelExperts5
{

    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                ViewState["LoginErrors"] = 0;
        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (LogInValidation(Login1.UserName, Login1.Password))
            {
                // e.Authenticated = true;  
                Login1.Visible = false;
                Session["Username"] = Login1.UserName;
                Response.Redirect("Detail.aspx");
            }
            else
            {
                e.Authenticated = false;
            }
        }

        private bool LogInValidation(string userName, string password)
        {
            int matchCount = CustomerDB.GetCustomer(userName, password);
            // username and password is valid
            if (matchCount == 1)
            {
                return true;
            }
            // no valid username & password found
            else
            {
                return false;
            }
        }

        protected void Login1_LoginError(object sender, EventArgs e)
        {
            if (ViewState["LoginErrors"] == null)
                ViewState["LoginErrors"] = 0;
            int ErrorCount = (int)ViewState["LoginErrors"] + 1;
            ViewState["LoginErrors"] = ErrorCount;
            if ((ErrorCount > 3) && (Login1.PasswordRecoveryUrl != string.Empty))
                Response.Redirect(Login1.PasswordRecoveryUrl);
        }
        
        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            //redirects to register page
            Response.Redirect("Register.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }
    }
}