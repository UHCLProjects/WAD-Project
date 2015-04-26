using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HoustonTktServicesAsp_Gourishetty
{
    public class Transaction
    {
        String emailAddress;
        long ticketNumber;
        byte numberOfTickets;
        String ticketHolderName;
        String shippingAddress;
        String eventName;
        String paymentMethod;
        String accountNumber;

        //Properties
        public String EmailAddress
        {
            get { return emailAddress; }
            set { emailAddress = value; }
        }
        public long TicketNumber
        {
            get { return ticketNumber; }
            set { ticketNumber = value; }
        }
        public byte NumberOfTickets
        {
            get { return numberOfTickets; }
            set { numberOfTickets = value; }
        }
        public String TicketHolderName
        {
            get { return ticketHolderName; }
            set { ticketHolderName = value; }
        }
        public String ShippingAddress
        {
            get { return shippingAddress; }
            set { shippingAddress = value; }
        }
        public String EventName
        {
            get { return eventName; }
            set { eventName = value; }
        }
        public String PaymentMethod
        {
            get { return paymentMethod; }
            set { paymentMethod = value; }
        }
        public String AccountNumber
        {
            get { return accountNumber; }
            set { accountNumber = value; }
        }
    }
}