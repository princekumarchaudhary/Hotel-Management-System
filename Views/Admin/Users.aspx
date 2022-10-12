<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master"  AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="Mybody" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-center">Manage Users</h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <form>
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
                        <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click"  />&nbsp;
                        <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger" OnClick="DeleteBtn_Click"  />
                    </div>
                    <div>
                        <label id="ErrMsg" runat="server" class="text-danger"></label>
                        <br />
                        <asp:Button ID="SaveBtn" runat="server" Text="Save" class="btn btn-success" OnClick="SaveBtn_Click"/>
                    </div>
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </form>
            </div>
            <div class="col-md-9">
                <asp:GridView ID="gv_users" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gv_users_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Choose" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
               </div>
        </div>
    </div>
</asp:Content>
