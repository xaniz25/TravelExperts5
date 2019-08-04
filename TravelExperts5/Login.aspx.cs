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

        }
        /*
         * Victor Lantion
         * Purpose: On login click, checks for a match and redirects page. 
         */
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = Login1.UserName; //"L.Enison"; //txtUsername.Text;
            string password = Login1.Password; //txtPassword.Text;

            int matchCount = CustomerDB.GetCustomer(username, password);
            if (matchCount == 1)
            {
                Session["Username"] = Login1.UserName;
                Response.Redirect("Detail.aspx");
            }
            else
            {
                // error message
                Response.Redirect("Register.aspx");

            }


        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {

        }
    }
}