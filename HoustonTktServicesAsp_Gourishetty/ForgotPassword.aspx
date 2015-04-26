<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="HoustonTktServicesAsp_Gourishetty.ForgotPassword1" %>
<%@ Register TagPrefix="houstonTickets" TagName="Header" Src="~/Header.ascx"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Forgot Password</title>
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <div class="centeralign">
    <form id="frmForgotPwd" runat="server">
            <!--Title Section-->
           <houstonTickets:Header ID="pgHeader" runat="server" />
          <%--  <div>
                <div class="pageTitle">
                    Houston Tickets
            <img src="home.jpg" style="width: 100%; height: 200px;" alt="Houston Tickets" />
                </div>
                <div class="siteDescription">
                   Online Houston Ticket Services is an independent agency which has been operating since 1990. We secure tickets for all events in houston, we apprecite your business with us. Thank you and Keep your trust on us!
                </div>
            </div>--%>
            <!--End Title Section-->
            <div>
                <div>Tell us your User ID</div>
                <div>
                    <div style="float: left; width: 50%;">
                        <div class="padding4percent">Email Address</div>
                        <div class="padding4percent">
                            <asp:TextBox runat="server" ID="txtEmail" Width="320px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rqfEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter an Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regEmail" runat="server"
                                ControlToValidate="txtEmail"
                                ErrorMessage="Enter Valid Email"
                                ForeColor="Red"
                                ValidationExpression="^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$"
                                Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div style="float: right; width: 50%;">
                        <div class="padding4percent">Re-enter Email Address</div>
                        <div class="padding4percent">
                            <asp:TextBox ID="txtCnfEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqfCmpEmail" runat="server" ControlToValidate="txtCnfEmail" ErrorMessage="Enter an Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpEmail" runat="server" ControlToCompare="txtEmail"
                                ControlToValidate="txtCnfEmail"
                                ErrorMessage="Entered email values do not match"
                                ForeColor="Red"
                                Display="Dynamic"></asp:CompareValidator>
                        </div>
                    </div>

                </div>
                <div style="clear: both"></div>
                <div class="padding4percent">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnIsSubmit_Click" />
                </div>
            </div>
           <div style="text-align: center; float: right">
                <asp:HyperLink ID="hplBack" runat="server" Text="Back" NavigateUrl="~/Default.aspx" />
            </div>
        </form>

    </div>
</body>
</html>
