<%@ Page Title="Login" Language="C#"  AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login"  EnableEventValidation="false" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login</title>
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
                <label for="EmailTb" class="form-label">Email address</label>
                <input type="text" class="form-control" id="EmailTb" runat="server">
            </div>
            <div class="mb-3">
                 <label for="PasswordTb" class="form-label">Password</label>
                 <input type="password" class="form-control" id="PasswordTb" runat="server">
            </div>
            <br />
            <div class="mb-3">
                <asp:RadioButton ID="AdminCheck" runat="server" GroupName="Roles" /><label>Admin</label>
                <asp:RadioButton ID="UsersCheck" runat="server" GroupName="Roles"/><label>User</label>
                 <%--<input type="radio"  id="AdminCheck" runat="server"><label>Admin</label>
                 <input type="radio"  id="UserCheck" runat="server"><label>User</label>--%>
            </div>
             <div class="mb-3">
                 <label id="ErrMsg" class="text-danger" runat="server"></label>
            </div>
            <br />
            <asp:Button ID="LoginBtn" runat="server" Text="Login" class="btn btn-primary" OnClick="LoginBtn_Click"/>&nbsp;
            <asp:Button ID="SignUpBtn" runat="server" Text="SignUp" class="btn btn-primary" OnClick="SignUpBtn_Click"/>
            <br />
        </form>
        </div>
      </div>
    </div>
 
</body>
</html>
