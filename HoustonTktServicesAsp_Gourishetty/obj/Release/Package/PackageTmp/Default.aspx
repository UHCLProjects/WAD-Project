<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HoustonTktServicesAsp_Gourishetty.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <div class="centeralign">
        <form id="frmLogin" runat="server">
            <!--Title bar-->
            <div>

                <div class="pageTitle">
                    Houston Tickets
            <img src="home.jpg" style="width: 100%; height: 200px;" alt="Houston Tickets" />
                </div>
                <div class="siteDescription">
                   Online Houston Ticket Services is an independent agency which has been operating since 1990. We secure tickets for all events in houston, we apprecite your business with us. Thank you and Keep your trust on us!
                </div>
            </div>
            <div>
                <!--Existing User-->
                <div style="float: left; width: 50%; background-color: antiquewhite; min-height:300px;">
                    <div class="padding4percent">
                     <font color="blue">   Already Registered? </font>
                    </div>
                    <div class="padding4percent" style="padding-top:5px">
                        <div><span>Email Address</span></div>
                        <div>
                            <asp:TextBox ID="txtLEmail" runat="server" ValidationGroup="existingUser"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqfEmail" runat="server" ControlToValidate="txtLEmail" ErrorMessage="Enter an Email" CssClass="noteStyle" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="txtLEmail" ErrorMessage="Enter Valid Email" CssClass="noteStyle" 
                            ValidationExpression="^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$" Display="Dynamic"></asp:RegularExpressionValidator>
</div>
                    </div>
                    <div class="padding4percent">
                        <div><span>Password</span></div>
                        <div>
                            <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="existingUser" TextMode="Password"></asp:TextBox></div>
                        <label class="noteStyle"> <font color="red"> 6-20 characters (alphanumeric)</font></label><br />
                        <asp:RequiredFieldValidator ID="rqfPwd" 
                            runat="server" 
                            ControlToValidate="txtPassword" 
                            ErrorMessage="Enter a Password" 
                            CssClass="noteStyle"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regPwd" 
                            runat="server" 
                            ControlToValidate="txtPassword" 
                            ErrorMessage="Enter Valid Password" 
                           CssClass="noteStyle"
                            ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>

                    </div>
                    <div class="padding4percent">
                        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" ValidationGroup="existingUser" OnClick="btnSignIn_Click"/>
                    </div>
                    <div class="padding4percent" style="padding-top:5px">
                       
                        <asp:HyperLink ID="hplForgotPwd" runat="server" NavigateUrl="~/ForgotPassword.aspx" Text="Forgot Your Password?" ForeColor="Red" ></asp:HyperLink>
                        
                    </div>
                </div>
                <!--New User-->
                <div style="float: right; width: 49%; background-color: aliceblue; min-height:300px;border: 2px solid black ">
                    <div class="padding4percent" style="border:5px solid black;">
                        New to Ticket Link?
                    </div>
                    <div class="padding4percent" style="padding-top:5px; font-family:'Lucida Sans'">
                     <font color="red"> Let's get your account set up. It's FREE</font>  
                    </div>
                    <div class="padding4percent" style="padding-top:5px">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" ValidationGroup="newUser" Width="100px" OnClick="btnRegister_Click"/>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
    <script src="main.js"></script>
</body>
</html>
