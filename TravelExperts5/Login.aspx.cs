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

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = "L.Enison"; //txtUsername.Text;
            string password = "bam"; //txtPassword.Text;

            int matchCount = CustomerDB.GetCustomer(username, password);
            if (matchCount == 1)
            {
                //Session["Username"] = txtUsername.Text;
                Response.Redirect("Detail.aspx");
            }
            else
            {
                // error message
            }


        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {

        }
    }
}