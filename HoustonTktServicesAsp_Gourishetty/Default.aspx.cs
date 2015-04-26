using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoustonTktServicesAsp_Gourishetty
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationForm.aspx");
        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            { 
            ArrayList userList = new ArrayList();
            bool isExistingUser = false;
            if (null != Session["userList"])
            {
                userList = (ArrayList)Session["userList"];
                foreach (Customer c in userList)
                {
                    if (c.EmailAddress.Equals(txtLEmail.Text) && c.Password.Equals(txtPassword.Text))
                    {
                        isExistingUser = true;
                        Session["CurrentUser"] = c;
                        Response.Redirect("PurchaseTickets.aspx");
                    }
                }
            }
            if (null == Session["userList"] || isExistingUser == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "loginFailed", "alert('Login Failed. Please Register');", true);
            }
            }
        }
    }
}