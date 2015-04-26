using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace HoustonTktServicesAsp_Gourishetty
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //spnPassword.InnerText = PreviousPage.Password;

            String msgTo = PreviousPage.Email;
            String msgSubject = "We are glad to send your password!";
            String msgBody = "Valuable Customer, </br> You are receiving this email because you requested to recover your password from Houston Ticket Services." +
                "</br></br> Your current password is <font style=\"color:red\">" + PreviousPage.Password + "</font>"
                + "</br></br>Thank You.</br>Houston Tickets Association";

            MailMessage mailObj = new MailMessage();
            mailObj.Body = msgBody;
            mailObj.From = new MailAddress("gourishetty.charan@gmail.com", "Houston Tickets");
            mailObj.To.Add(new MailAddress(msgTo));
            mailObj.Subject = msgSubject;
            mailObj.IsBodyHtml = true;
            SmtpClient SMTPClient = new SmtpClient();
            SMTPClient.Host = "smtp.gmail.com";
            SMTPClient.Port = 587;
            SMTPClient.Credentials = new NetworkCredential("gourishetty.charan@gmail.com", "89781066009160976849");
            SMTPClient.EnableSsl = true;
            try
            {
                SMTPClient.Send(mailObj);
                spnPassword.Style.Add("Display", "block");
                spnPassword.InnerText = spnPassword.InnerText.Replace("@@email", PreviousPage.Email);
            }
            catch (Exception)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mailFailed", "alert('Email sending failed');", true);
            }


        }
    }
}