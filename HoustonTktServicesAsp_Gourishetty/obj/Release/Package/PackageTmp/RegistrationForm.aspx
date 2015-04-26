<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="HoustonTktServicesAsp_Gourishetty.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Houston Tickets</title>
    <link href="main.css" rel="stylesheet" />
</head>
<body>
    <div class="centeralign">
        <form id="frmRegister" runat="server">
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
            <!--Email Address -->
            <div>
                <div>Create Your Account</div>
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
                            <asp:TextBox ID="txtConfirmEmail" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqfCmpEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter an Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpEmail" runat="server" ControlToCompare="txtEmail"
                                ControlToValidate="txtConfirmEmail"
                                ErrorMessage="Entered email id's doesn't match"
                                ForeColor="Red"
                                Display="Dynamic"></asp:CompareValidator>
                        </div>
                    </div>
                </div>



                <div style="clear: both"></div>
                <div class="padding4percent" style="text-align:center; padding-right:200px; padding-top:10px">
                    <asp:Button ID="btnIsValidEmail" runat="server" Text="Is This Email Address In Use?" OnClick="btnIsValidEmail_Click" />
                </div>
                <div id="existingUser" runat="server" style="display: none; color: red">The email id you have entered already exists. Please use forgot password option.</div>
            </div>
            <div>

                <div style="display: none;" runat="server" id="tblRegisterMenu">
                    <div class="padding4percent">
                        <div style="float: left; width: 50%;">
                            <div class="padding4percent">Password *</div>
                            <div class="padding4percent">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqfPassword" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="Enter Password" 
                                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regPassword" runat="server"
                                    ControlToValidate="txtPassword"
                                    ErrorMessage="Password did not meet requirements"
                                    ForeColor="Red"
                                    ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$"
                                    Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div style="float: right; width: 50%;">
                            <div class="padding4percent">Re-enter Password*</div>
                            <div class="padding4percent">
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqfCmpPassword" runat="server" 
                                    ControlToValidate="txtConfirmPassword" ErrorMessage="Re-enter password" 
                                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cmpPassword" runat="server" ControlToCompare="txtPassword"
                                    ControlToValidate="txtConfirmPassword"
                                    ErrorMessage="Entered password values do not match"
                                    ForeColor="Red"
                                    Display="Dynamic"></asp:CompareValidator>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div style="float: left; width: 50%;">
                            <div>First Name *</div>
                            <div>
                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqfFName" runat="server" 
                                    ControlToValidate="txtFirstName" ErrorMessage="Enter first name" 
                                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regFirstName" runat="server"
                                    ControlToValidate="txtFirstName"
                                    ErrorMessage="Invalid First Name"
                                    ForeColor="Red"
                                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                    Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div style="float: right; width: 50%;">
                            <div>Last Name*</div>
                            <div>
                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqfLName" runat="server" 
                                    ControlToValidate="txtLastName" ErrorMessage="Enter last name" 
                                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regLName" runat="server"
                                    ControlToValidate="txtLastName"
                                    ErrorMessage="Invalid Last Name"
                                    ForeColor="Red"
                                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                    Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>Street Address*</div>
                        <div>
                            <asp:TextBox ID="txtStreetAddress" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqfStreetAddress" runat="server" 
                                ControlToValidate="txtLastName" ErrorMessage="Enter street address" 
                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div>
                        <div style="float: left; width: 50%;">
                            <div>City*</div>
                            <div>
                                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rqfCity" runat="server" 
                                ControlToValidate="txtLastName" ErrorMessage="Enter city" 
                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div style="float: right; width: 50%;">
                            <div>State</div>
                            <div>
                                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqfState" runat="server" 
                                    ControlToValidate="txtState" ErrorMessage="Enter State" 
                                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regState" runat="server"
                                    ControlToValidate="txtState"
                                    ErrorMessage="Invalid State"
                                    ForeColor="Red"
                                    ValidationExpression="^(A[LKSZRAEP]|C[AOT]|D[EC]|F[LM]|G[AU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])$"
                                    Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div style="float: left; width: 50%;">
                            <div>Zip Code*</div>
                            <div>
                                <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqfZipCode" runat="server" 
                                    ControlToValidate="txtZipCode" ErrorMessage="Enter zip code" 
                                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regZipCode" runat="server"
                                    ControlToValidate="txtZipCode"
                                    ErrorMessage="Invalid Zip Code"
                                    ForeColor="Red"
                                    ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"
                                    Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div style="float: right; width: 50%;">
                            <div>Phone</div>
                            <div>
                                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="regPhone" runat="server"
                                    ControlToValidate="txtPhone"
                                    ErrorMessage="Invalid Phone"
                                    ForeColor="Red"
                                    ValidationExpression="/(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})/"
                                    Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div style="text-align: center; padding-right:200px">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </div>

                    </div>
                </div>
                <div style="text-align: center; float: right">
                    <asp:HyperLink ID="hplBack" runat="server" Text="Back" NavigateUrl="~/UserLogin.aspx" />
                </div>
            </div>
        </form>
    </div>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
</body>
</html>
