<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="HoustonTktServicesAsp_Gourishetty.ThankYou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You Note</title>
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <div class="centeralign">
        <form id="frmThankYou" runat="server">
            <div>
                <!--Title Section-->
                <div>
                    <div class="pageTitle">
                        Houston Tickets
            <img src="home.jpg" style="width: 100%; height: 200px;" alt="Houston Tickets" />
                    </div>
                    <div class="siteDescription">
                        Online Houston Ticket Services is an independent agency which has been operating since 1990. We secure tickets for all events in houston, we apprecite your business with us. Thank you and Keep your trust on us!
                    </div>
                </div>
                <!--End Title Section-->
                <!--Thank you-->
                <div id="divThankYouNote" class="centerAlignDiv thankYou">
                    <div style="color: #004C80"><b>Thank you for your business.</b></div>
                    <div style="color: darkGreen">Your tickets will be shipped to the address entered above within 5 business days</div>
                    <div style="color: #004C80">Please print this page as your receipt</div>
                    <div style="color: darkGreen"><i>Enjoy the event..!!</i></div>
                </div>
                <!--End thank you section -->
                <!--Show back button to go back to buy tickets page -->
                <div style="text-align: center; float: right">
                    <asp:HyperLink ID="hplBack" runat="server" Text="Back" NavigateUrl="~/PurchaseTickets.aspx" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
