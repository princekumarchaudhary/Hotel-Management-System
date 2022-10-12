<%@ Page Title="Manage Users" Language="C#"  AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" EnableEventValidation="false" %>


<!DOCTYPE html>
<head runat="server">
    <title>SignUp</title>
    <link rel="stylesheet" href="../../Content/bootstrap.css" type="text/css" />
   
</head>
<body>
   <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-center">Hotel Management System</h1></div>
            <div class="col-4"></div>
        </div>
       <div class="row">
            <div class="col-md-3">
               <form id="form1" runat="server">
                    <div class="mb-3">
                        <label for="FullName" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="FullName" runat="server">
                        <asp:RequiredFieldValidator ID="FullNameRV" runat="server" ErrorMessage="Name is Required" ControlToValidate="FullName" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="MobileNumber" class="form-label">Mobile Number</label>
                        <input type="text" class="form-control" id="MobileNumber" runat="server" >
                        <asp:RequiredFieldValidator ID="MobileRV" runat="server" ErrorMessage="Mobile is Required" ControlToValidate="MobileNumber" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="Email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="Email" runat="server">
                        <asp:RequiredFieldValidator ID="EmailRV" runat="server" ErrorMessage="Email is Required" ControlToValidate="Email" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="UserName" class="form-label">User Name</label>
                        <input type="text" class="form-control" id="UserName" runat="server">
                        <asp:RequiredFieldValidator ID="UserNameRV" runat="server" ErrorMessage="UserName is Required" ControlToValidate="UserName" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="Password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="Password" runat="server" >
                        <asp:RequiredFieldValidator ID="PasswordRV" runat="server" ErrorMessage="Password is Required" ControlToValidate="Password" Display="None"></asp:RequiredFieldValidator>
                    </div>
                   <div class="mb-3">
                        <label for="ConfirmPassword" class="form-label">Confirm Password</label>
                        <input type="password" class="form-control" id="ConfirmPassword" runat="server" >
                        <asp:RequiredFieldValidator ID="ConfrimPasswordRV" runat="server" ErrorMessage="Confirm Password is Required" ControlToValidate="ConfirmPassword" Display="None"></asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Password should be same" ControlToValidate="ConfirmPassword" ControlToCompare="Password" Display="None"></asp:CompareValidator>
                    </div>
                    <div class="mb-3">
                        <label for="IdProof" class="form-label">Id Proof</label>
                        <input type="text" class="form-control" id="IdProof" runat="server" >
                        <asp:RequiredFieldValidator ID="IdProofRV" runat="server" ErrorMessage="Id is Required" ControlToValidate="IdProof" Display="None" ></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="Gender" class="form-label">Gender</label>
                        <input type="text" class="form-control" id="Gender" runat="server">
                        <asp:RequiredFieldValidator ID="GenderRV" runat="server" ErrorMessage="Gender is Required" ControlToValidate="Gender" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div>
                        <label id="ErrMsg" runat="server" class="text-danger"></label>
                        <br />
                        <asp:Button ID="SaveBtn" runat="server" Text="Save" class="btn btn-success" OnClick="SaveBtn_Click"/>
                    </div>
                    <br />
                   <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </form>
                </div>
           </div>
          </div>
 
</body>
</html>

     
