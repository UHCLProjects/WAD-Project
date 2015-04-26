using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoustonTktServicesAsp_Gourishetty
{
    public partial class ForgotPassword1 : System.Web.UI.Page
    {
        public static string password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void btnIsSubmit_Click(object sender, EventArgs e)
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
                    if (c.EmailAddress.Equals(txtEmail.Text))
                    {
                       password = c.Password;
                        isExistingUser = true;
                        Server.Transfer("ShowPassword.aspx");
                    }
                }
            }
            if (!isExistingUser)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "lookupFailed", "alert('User does not exist. Please Register');", true);
            }
             }
            
        }
        //Use this to refer entered text in ShowPassword.aspx page with Previous page directive
         public String Password
         {
             get
             {
                 return password;
             }
         }
         public String Email
         {
             get
             {
                 return txtEmail.Text;
             }
         }
    }
}