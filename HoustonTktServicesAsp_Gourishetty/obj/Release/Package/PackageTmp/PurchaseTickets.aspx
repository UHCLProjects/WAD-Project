<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="PurchaseTickets.aspx.cs" Inherits="HoustonTktServicesAsp_Gourishetty.Default" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Houston Ticket Services</title>
    <link href="main.css" rel="stylesheet" />
</head>
<body onload="dropDownList_Populate();">
    <div class="centeralign">
        <form id="frmOnlineHoustonTkts" runat="server">
            <div class="pageTitle">
                <span style="vertical-align: central; color: black">Online Houston Ticket Services</span>
                <img src="home.jpg" />
            </div>
            <div class="siteDescription">
                Online Houston Ticket Services is an independent agency which has been operating since 1990. We secure tickets for all events in houston, we apprecite your business with us. Thank you and Keep your trust on us!
            </div>
            <div style="text-align: center; font-weight: bold;">
                <div style="padding-top: 10px">
                    Select type of Ticket:
                     <asp:RadioButtonList ID="EventType" runat="server" RepeatDirection="Horizontal" TextAlign="Right" align="center">
                         <asp:ListItem Value="events" onClick="dropDownList_Populate();" Selected="true">Houston Events</asp:ListItem>
                         <asp:ListItem Value="sports" onClick="dropDownList_Populate();">Houston Sports</asp:ListItem>
                     </asp:RadioButtonList>
                </div>
            </div>
            <br />
            <br />
          <%--  <div>
                <div style="width: 40%; float: left; color: black; margin-left: 400px; font-weight: bold">
                    Event and Details :
                </div>
                <div style="font-weight: bold; color: black; margin-left: 30px">
                    # of tickets
                </div>
            </div>
            <div>
                <div style="width: 70%; float: left;">
                    <asp:DropDownList runat="server" ID="dropDownList_Details" Style="margin-left: 400px; width: 500px">
                        <asp:ListItem Value="0">Select Tickets</asp:ListItem>
                        <asp:ListItem Value="1" id="option1">1</asp:ListItem>
                        <asp:ListItem Value="2" id="option2">2</asp:ListItem>
                        <asp:ListItem Value="3" id="option3">3</asp:ListItem>
                        <asp:ListItem Value="4" id="option4">4</asp:ListItem>
                        <asp:ListItem Value="5" id="option5">5</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div style="padding-left: 20px">
                    <asp:DropDownList runat="server" ID="ddlNumber">
                        <asp:ListItem Value="0">Select # of Tickets</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>--%>

               <div class="centerAlignDiv">
                <div>
                    <div>
                        <span class="spnTitle">Event and Details:</span>
                        <span>
                            <asp:DropDownList ID="dropDownList_Details" runat="server" Style="margin-top: 4px; margin-bottom: 4px;" CssClass="spnControls">
                                <asp:ListItem Value="0">Select Tickets</asp:ListItem>
                                <asp:ListItem Value="1" id="option1">1</asp:ListItem>
                                <asp:ListItem Value="2" id="option2">2</asp:ListItem>
                                <asp:ListItem Value="3" id="option3">3</asp:ListItem>
                                <asp:ListItem Value="4" id="option4">4</asp:ListItem>
                                <asp:ListItem Value="5" id="option5">5</asp:ListItem>
                            </asp:DropDownList>
                        </span>
                    </div>
                    <div>
                        <span class="spnTitle"># of tickets:</span>
                        <span>
                            <asp:DropDownList runat="server" CssClass="spnControls" ID="ddlNumber" Style="margin-top: 4px; margin-bottom: 4px;">
                                <asp:ListItem Value="0">Select #</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                            </asp:DropDownList>
                        </span>
                    </div>
                </div>
                   </div>
                <div style="clear: both"></div>


            <!--Name and all the details-->
            <div style="text-align: center; padding-top: 20px">
                <div>
                    <span style="padding-right: 20px; font-weight: bold">Ticket Holder Name: </span><span>
                        <asp:TextBox runat="server" ID="txtName" /></span>
                </div>
                <div>
                    <span style="padding-right: 50px; font-weight: bold">Ship Tickets To: </span><span>
                        <asp:TextBox runat="server" ID="txtAddress" /></span>
                </div>
                <div style="padding-top: 20px; font-weight: bold">
                    <asp:Button runat="server" Style="background-color: beige; width: auto; width: 100px; margin-left: 150px" Text="View Tickets" OnClientClick="viewTickets();return false;" />
                </div>
            </div>
            <br />
            <!--ticket Details-->
            <div id="tktDetails_Div" runat="server" style="display: none; text-align: center; padding-left: 500px;">
                <br />
                <br />
                <div style="float: left; border: solid;">
                    <div>
                        <span>Ticket Number: </span>
                         <asp:Label ID="tktNum_Span" runat="server"></asp:Label>
                    </div>
                    <div>
                        <span>Ticket Holder's Name: </span><span id="tktName_Span" runat="server"></span>
                    </div>
                    <div>
                        <span>Address: </span><span id="tktAddress_Span" runat="server"></span>
                    </div>
                    <div>
                        <span>Event: </span><span id="tktEvent_Span" runat="server"></span>
                    </div>
                    <div><font color =" chocolate">
                        <span>Authorized distributor Online Houston Ticket Services</span> </font>
                    </div>
                </div>
                <div id="rightpart">
                    <span style="font-size: xx-large; padding-top: 50px">X </span><span style="font-size: xx-large; padding-left: 50px" id="tktCount_Span" runat="server"></span>
                </div>
            </div>
            <div style="clear: both"></div>
            <br />
            <br />
            <!--Payment Information-->
            <div style="text-align: center; font-weight: bold">
                <div style="padding-top: 10px">
                    Select payment method:
                     <asp:RadioButtonList ID="rblPayment" runat="server" RepeatDirection="Horizontal" TextAlign="Right" align="center" OnSelectedIndexChanged="rblPayment_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem  value="visa">Visa</asp:ListItem>
                    <asp:ListItem  value="master">Master</asp:ListItem>
                    <asp:ListItem value="paypal">Paypal</asp:ListItem>
                   <%-- <asp:ListItem value="BankAccount">Bank Account</asp:ListItem>--%>
                     </asp:RadioButtonList>
                </div>  

               <%-- <div style="padding-top: 10px">
                    <span style="padding-right: 30px">Account Number:</span><span><asp:TextBox runat="server" id="txtAccountNum" /></span>
                </div>--%>
                 <div style="padding: 0.25%;">
                    <span class="spnTitle">Card Number: </span>
                    <asp:TextBox runat="server" ID="txtAccountNum" Style="margin: 4px;" />
                    <asp:RequiredFieldValidator ID="rqfCardNum" runat="server" ControlToValidate="txtAccountNum" ErrorMessage="Enter card number" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regVisaCardNum" runat="server"
                        ControlToValidate="txtAccountNum"
                        ErrorMessage="Enter Valid Visa Number" 
                        ForeColor="Red"
                        ValidationExpression="^4[0-9]{12}(?:[0-9]{3})?$"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="regMasterCardNum" runat="server"
                        ControlToValidate="txtAccountNum"
                        ErrorMessage="Enter Valid Master Number"
                        ForeColor="Red"
                        ValidationExpression="^5[1-5][0-9]{14}$"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </div>

                <div style="padding-top: 10px">
                    <span style="color: chocolate">Important: Tickets will be shipped to the address shown in ticket</span>
                </div>
            </div>
            <%--<div style="padding-top: 20px">
                <asp:Button style="background-color: beige; width: auto; width: 150px; margin-left: 700px" Text="Complete Transaction" runat="server" OnClientClick="validate();return false;"/>
            </div>--%>
             <div class="centerAlignDiv">
                <asp:Button Text="Submit" ID="btnSubmit" runat="server" value="Complete Transaction" OnClick="btnSubmit_Click" />
            </div>

             <div style="clear:both"></div>
               <input type="hidden" id="hdnTktNum" runat="server" value="" clientidnode="Static" />
             <input type="hidden" id="hdnName" runat="server" value="" clientidnode="Static" />
             <input type="hidden" id="hdnAddress" runat="server" value="" clientidnode="Static" />
             <input type="hidden" id="hdnDetails" runat="server" value="" clientidnode="Static" />
             <input type="hidden" id="hdnTktCount" runat="server" value="" clientidnode="Static" />

       <%-- <!--Thank you note-->
        <div id="divThankYouNote" style="display:none;text-align:center;font-style:italic;color:chocolate">
            <div>Thank you for your business.</div>
            <div>Your tickets will be shipped to the address entered above within 5 business days</div>
            <div>Please print this page as your receipt</div>
            <div>Enjoy the event</div>
        </div>--%>
        </form>
    </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
    <script src="main.js"></script>

</body>
</html>
