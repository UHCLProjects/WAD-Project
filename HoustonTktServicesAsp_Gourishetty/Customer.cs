using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HoustonTktServicesAsp_Gourishetty
{
    public class Customer
    {
        String emailAddress;
        String password;
        String firstName;
        String lastName;
        String streetAddress;
        String city;
        String state;
        String zip;
        String phone;

        //Properties
        public String EmailAddress
        {
            get { return emailAddress; }
            set { emailAddress = value; }
        }
        public String Password
        {
            get { return password; }
            set { password = value; }
        }
        public String FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }
        public String LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }
        public String StreetAddress
        {
            get { return streetAddress; }
            set { streetAddress = value; }
        }
        public String City
        {
            get { return city; }
            set { city = value; }
        }
        public String State
        {
            get { return state; }
            set { state = value; }
        }
        public String Zip
        {
            get { return zip; }
            set { zip = value; }
        }
        public String Phone
        {
            get { return phone; }
            set { phone = value; }
        }

    }
}