<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowPassword.aspx.cs" Inherits="HoustonTktServicesAsp_Gourishetty.ForgotPassword" %>

<%@ PreviousPageType VirtualPath="~/ForgotPassword.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Retrive Password </title>
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <div class="centeralign">
        <form id="frmForgotPassword" runat="server">
            <!--Title Section-->
            <div>
                <div class="pageTitle">
                    Houston Tickets
            <img src="index.jpg" style="width: 100%; height: 200px;" alt="Houston Tickets" />
                </div>
                <div class="siteDescription">
                     Online Houston Ticket Services is an independent agency which has been operating since 1990. We secure tickets for all events in houston, we apprecite your business with us. Thank you and Keep your trust on us!
                </div>
            </div>
            <!--End Title Section-->
            <div>
                <span>Your Password: </span><span id="spnPassword" runat="server"></span>
            </div>
            <!--Show back button to go back to buy tickets page -->
            <div style="text-align: center; float: right">
                <asp:HyperLink ID="hplBack" runat="server" Text="Back" NavigateUrl="~/Default.aspx" />
            </div>
        </form>
    </div>
</body>
</html>
