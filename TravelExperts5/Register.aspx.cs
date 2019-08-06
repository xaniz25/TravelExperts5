using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpertsData;

namespace TravelExperts5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            FirstNameBox.Text = "";
            LastNameBox.Text = "";
            AddressBox.Text = "";
            CityBox.Text = "";
            PostalBox.Text = "";
            CountryBox.Text = "";
            HPhoneBox.Text = "";
            BPhoneBox.Text = "";
            EmailBox.Text = "";
            UsernameBox.Text = "";
            PasswordBox.Text = "";
            ConfirmPasswordBox.Text = "";

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            CustomerDB.CreateCustomer(FirstNameBox.Text, LastNameBox.Text, AddressBox.Text, CityBox.Text, ddlProvince.Text, PostalBox.Text, CountryBox.Text, HPhoneBox.Text, BPhoneBox.Text, EmailBox.Text, UsernameBox.Text, PasswordBox.Text);
        }
    }
}