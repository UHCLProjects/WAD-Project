using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoustonTktServicesAsp_Gourishetty
{
    public partial class ViewTktDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            long tktNum = Convert.ToInt64(Request.QueryString["TktNum"]);
            Transaction tobj = new Transaction();
            ArrayList transactionsList = new ArrayList();
            bool isTktNumValid = false;
            //Check if there is a transactions list on session
            if (null != Session["transactionsList"])
            {
                transactionsList = (ArrayList)Session["transactionsList"];
                foreach (Transaction t in transactionsList)
                {
                    if (t.TicketNumber == tktNum)
                    {
                        isTktNumValid = true;
                        txtAcctNum.Text = t.AccountNumber.Replace(t.AccountNumber.Substring(0, 12), "************");
                        txtEvent.Text = t.EventName;
                        txtHolderName.Text = t.TicketHolderName;
                        txtPaymentMethod.Text = t.PaymentMethod;
                        txtShippingAddress.Text = t.ShippingAddress;
                        txtTktCount.Text = t.NumberOfTickets.ToString();
                        break;
                    }
                }
                if (isTktNumValid == false)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "tktNumNotFound", "alert('Ticket with specified number does not exist.');", true);
                }
            }
            if (null == Session["transactionsList"])
            {
                ClientScript.RegisterStartupScript(this.GetType(), "noTkts", "alert('Ticket with specified number does not exist.');", true);
            }
        }
    }
}