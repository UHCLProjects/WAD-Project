using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoustonTktServicesAsp_Gourishetty
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Transaction tobj = new Transaction();
                ArrayList transactionsList = new ArrayList();
                Customer c = new Customer();

                //Check if there is a transactions list on session
                if (null != Session["transactionsList"])
                {
                    transactionsList = (ArrayList)Session["transactionsList"];
                }
                //Check if there is ticket generated and then add values to the ticket object
                if (!string.IsNullOrEmpty(hdnTktNum.Value))
                {

                    //Populate transaction related variables and create a transaction object
                    c = (Customer)Session["CurrentUser"];
                    if (null != c)
                        tobj.EmailAddress = c.EmailAddress;
                    tobj.TicketNumber = Convert.ToInt64(hdnTktNum.Value);
                    tobj.NumberOfTickets = Convert.ToByte(ddlNumber.Text);
                    tobj.TicketHolderName = txtName.Text;
                    tobj.ShippingAddress = txtAddress.Text;
                    tobj.EventName = dropDownList_Details.Text;
                    tobj.PaymentMethod = rblPayment.Text;
                    tobj.AccountNumber = txtAccountNum.Text;

                    //Add the trasaction object to the array list and update session variable
                    transactionsList.Add(tobj);
                    InsertIntoDB(tobj);
                    Session["transactionsList"] = transactionsList;
                    //Redirect to thank you page
                    Response.Redirect("ThankYou.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "invalidTicket", "alert('There is no ticket number generated.\n Click on View Tickets.');", true);
                }
            }
        }




        protected void InsertIntoDB(Transaction tobj)
        {
            ArrayList tranList = new ArrayList();
            if (null != Session["transactionsList"])
            {
                tranList = (ArrayList)Session["transactionsList"];
            }
            using (SqlConnection cn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432014fa05thontepua;User Id=thontepua;Password=1323324"))
                try
                {
                    cn.Open();
                    using (SqlCommand cmd = new SqlCommand("insert into Gourishettys_WADfl14_Transactions values (@Id,@EmailAddress,@tktNum,@NumOfTickets,@tktHolderName,@ShipAddress,@event, @payment, @account)", cn))
                    {
                        cmd.Parameters.AddWithValue("@Id", tranList.Count);
                        cmd.Parameters.AddWithValue("@EmailAddress", tobj.EmailAddress);
                        cmd.Parameters.AddWithValue("@tktNum", tobj.TicketNumber);
                        cmd.Parameters.AddWithValue("@NumOfTickets", tobj.NumberOfTickets);
                        cmd.Parameters.AddWithValue("@tktHolderName", tobj.TicketHolderName);
                        cmd.Parameters.AddWithValue("@ShipAddress", tobj.ShippingAddress);
                        cmd.Parameters.AddWithValue("@event", tobj.EventName);
                        cmd.Parameters.AddWithValue("@payment", tobj.PaymentMethod);
                        cmd.Parameters.AddWithValue("@account", tobj.AccountNumber);
                        int i = cmd.ExecuteNonQuery();
                    }
                }

                finally
                {
                    cn.Close();
                }
        }
        protected void rblPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Show the generated ticket details if tktNum is not empty
            if (!string.IsNullOrEmpty(hdnTktNum.Value))
            {
                tktDetails_Div.Style.Add("display", "block");
                ticketDetails();
            }
            //If current selection is VISA, disable validator for master card
            if (rblPayment.SelectedIndex == 0)
            {
                regMasterCardNum.Enabled = false;
                regVisaCardNum.Enabled = true;
            }
            //If current selection is master card, disable validation for visa
            if (rblPayment.SelectedIndex == 1)
            {
                regMasterCardNum.Enabled = true;
                regVisaCardNum.Enabled = false;
            }
            //If current selection is master card, disable all validations
            if (rblPayment.SelectedIndex == 2)
            {
                regMasterCardNum.Enabled = false;
                regVisaCardNum.Enabled = false;
            }
        }
        protected void ticketDetails()
        {
           // tktNum_Span.InnerText = hdnTktNum.Value;
            tktAddress_Span.InnerText = hdnAddress.Value;
            tktCount_Span.InnerText = hdnTktCount.Value;
            tktEvent_Span.InnerText = hdnDetails.Value;
            tktName_Span.InnerText = hdnName.Value;
            
        }
        protected void btnViewOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetOrderId.aspx");
        }
    }
}