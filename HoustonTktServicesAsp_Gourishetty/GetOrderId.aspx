<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetOrderId.aspx.cs" Inherits="HoustonTktServicesAsp_Gourishetty.GetOrderId" %>
<%@ Register TagPrefix="houstonTickets" TagName="Header" Src="~/Header.ascx"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
         <div class="centeralign">
        <form id="frmGetOrderId" runat="server">
            <!--Title Section-->
            <houstonTickets:Header ID="pgHeader" runat="server" />

            <!--End Title Section-->
            <div>
                <span>Enter Ticket Number:</span><asp:TextBox ID="txtTktNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqfTktNum" runat="server" ControlToValidate="txtTktNumber" ErrorMessage="Please enter ticket number to proceed" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regTktNum" runat="server"
                                ControlToValidate="txtTktNumber"
                                ErrorMessage="Enter 6 digit ticket number"
                                ForeColor="Red"
                                 ValidationExpression="[0-9]{6}" Display="Dynamic"></asp:RegularExpressionValidator>
                            
            </div>
            <br />
            <div>
                <asp:Button ID="btnRetrieveOrder" runat="server" OnClick="btnRetrieveOrder_Click" Text="View Order Details"/>
            </div>
    </form>
    </div>
</body>
</html>
