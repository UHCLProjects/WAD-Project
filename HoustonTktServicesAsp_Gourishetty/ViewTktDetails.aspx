<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTktDetails.aspx.cs" Inherits="HoustonTktServicesAsp_Gourishetty.ViewTktDetails" %>
<%@ Register TagPrefix="houstonTickets" TagName="Header" Src="~/Header.ascx"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticket Details View</title>
    <link href="main.css" rel="stylesheet" />
</head>
<body>
     <div class="centeralign">
        <form id="frmTktDetails" runat="server">
            <!--Title Section-->
           <houstonTickets:Header ID="pgHeader" runat="server" />
            <!--End Title Section-->
            <div>
                <span>Ticket Holder's Name:</span><asp:TextBox ID="txtHolderName" runat="server" Enabled="false"></asp:TextBox>
            </div>
            <div>
                <span>Shipping Address:</span><asp:TextBox ID="txtShippingAddress" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div>
                <span>Event:</span><asp:TextBox ID="txtEvent" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div>
                <span>Number of Tickets:</span><asp:TextBox ID="txtTktCount" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div>
                <span>Payment Method:</span><asp:TextBox ID="txtPaymentMethod" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div>
                <span>Account #:</span><asp:TextBox ID="txtAcctNum" Enabled="false" runat="server"></asp:TextBox>
            </div>

            <br /><br />
            <!--Show back button to go back to buy tickets page -->
                <div style="text-align: center; float: right">
                    <asp:HyperLink ID="hplBack" runat="server" Text="Back" NavigateUrl="~/BuyTickets.aspx" />
                </div>
            <br />
    </form>
         </div>
</body>
</html>
