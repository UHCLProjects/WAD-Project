using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Collections;

namespace HoustonTktServicesAsp_Gourishetty
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                toggleValidators(false);
            }
        }
        protected void btnIsValidEmail_Click(object sender, EventArgs e)
        {
            //bool isExistingUser = false;
            //ArrayList userList = new ArrayList();
            if (Page.IsValid)
            {
                bool isExistingUser = false;
                ArrayList userList = new ArrayList();
                if (null != Session["userList"])
                {
                    userList = (ArrayList)Session["userList"];
                }

                foreach (Customer c in userList)
                {
                    if (c.EmailAddress.Equals(txtEmail.Text))
                        isExistingUser = true;
                }

                if (!isExistingUser)
                {
                    tblRegisterMenu.Style.Add("display", "block");
                    toggleValidators(true);
                }
                if (isExistingUser)
                {
                    existingUser.Style.Add("display", "block");
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //When the submit button is clicked, add the user to users list and update session variable
            if(Page.IsValid)
            { 
            ArrayList userList = new ArrayList();
            if (null != Session["userList"])
            {
                userList = (ArrayList)Session["userList"];
            }
            Customer newCustomer = new Customer();
            newCustomer.EmailAddress = txtEmail.Text;
            newCustomer.Password = txtPassword.Text;
            newCustomer.FirstName = txtFirstName.Text;
            newCustomer.LastName = txtLastName.Text;
            newCustomer.StreetAddress = txtStreetAddress.Text;
            newCustomer.City = txtCity.Text;
            newCustomer.State = txtState.Text;
            newCustomer.Zip = txtZipCode.Text;
            newCustomer.Phone = txtPhone.Text;
            userList.Add(newCustomer);
            Session["userList"] = userList;
            Response.Redirect("Default.aspx");
            }
        }
        protected void toggleValidators(bool isEnabled)
        {
            rqfPassword.Enabled = isEnabled;
            regPassword.Enabled = isEnabled;
            rqfCmpPassword.Enabled = isEnabled;
            cmpPassword.Enabled = isEnabled;
            rqfFName.Enabled = isEnabled;
            regFirstName.Enabled = isEnabled;
            rqfLName.Enabled = isEnabled;
            regLName.Enabled = isEnabled;
            rqfStreetAddress.Enabled = isEnabled;
            rqfCity.Enabled = isEnabled;
            rqfState.Enabled = isEnabled;
            regState.Enabled = isEnabled;
            rqfZipCode.Enabled = isEnabled;
            regZipCode.Enabled = isEnabled;
            //regPhone.Enabled = isEnabled;
            regPhone.Enabled = false;//Unable to understand the validator expression. Hence hardcoded this
        }
        protected void insertIntoDB(Customer c)
        {
            ArrayList userList = new ArrayList();
            if (null != Session["userList"])
            {
                userList = (ArrayList)Session["userList"];
            }
            using (SqlConnection cn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432014fa05thontepua;User Id=thontepua;Password=1323324"))
                try
                {
                    cn.Open();
                    using (SqlCommand cmd = new SqlCommand("insert into Gourishettys_WADfl14_Customers values (@Id,@EmailAddress,@password,@firstname,@LastName, @StreetAddress,@City, @State, @Zip, @Phone)", cn))
                    {
                        cmd.Parameters.AddWithValue("@Id", userList.Count);
                        cmd.Parameters.AddWithValue("@password", c.Password);
                        cmd.Parameters.AddWithValue("@firstname", c.FirstName);
                        cmd.Parameters.AddWithValue("@LastName", c.LastName);
                        cmd.Parameters.AddWithValue("@EmailAddress", c.EmailAddress);
                        cmd.Parameters.AddWithValue("@StreetAddress", c.StreetAddress);
                        cmd.Parameters.AddWithValue("@City", c.City);
                        cmd.Parameters.AddWithValue("@State", c.State);
                        cmd.Parameters.AddWithValue("@Zip", c.Zip);
                        cmd.Parameters.AddWithValue("@Phone", c.Phone);
                        int i = cmd.ExecuteNonQuery();
                    }
                }

                finally
                {
                    cn.Close();
                }
        }


    }
}