<%@ Page Title="Manage Rooms" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master"  AutoEventWireup="true" CodeFile="Rooms.aspx.cs" Inherits="Rooms" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="Mybody" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-center">Manage Rooms</h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form>
                    <div class="mb-3">
                        <label for="RNo" class="form-label">Room No</label>
                        <input type="text" class="form-control" id="RNo" runat="server" >
                        <asp:RequiredFieldValidator ID="RNoRV" runat="server" ErrorMessage="Room number is required" ControlToValidate="RNo" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="RType" class="form-label">Type</label>
                        <asp:DropDownList ID="RType" runat="server" class="form-control"></asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="Location" class="form-label">Room Location</label>
                        <input type="text" class="form-control" id="Location" runat="server">
                        <asp:RequiredFieldValidator ID="LocationRV" runat="server" ErrorMessage="Location is required" ControlToValidate="Location" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="RPrice" class="form-label">Room Price</label>
                        <input type="text" class="form-control" id="RPrice" runat="server" >
                        <asp:RequiredFieldValidator ID="RPriceRV" runat="server" ErrorMessage="Price is required" ControlToValidate="RPrice" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="RCapacity" class="form-label">Room Capacity</label>
                        <input type="text" class="form-control" id="RCapacity" runat="server">
                        <asp:RequiredFieldValidator ID="RCapacityRV" runat="server" ErrorMessage="Capacity is required" ControlToValidate="RCapacity" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label for="RStatus" class="form-label">Room Status</label>
                        <input type="text" class="form-control" id="RStatus" runat="server">
                        <asp:RequiredFieldValidator ID="RStatusRV" runat="server" ErrorMessage="Status is Required" ControlToValidate="RStatus" Display="None"></asp:RequiredFieldValidator>
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
            <div class="col-md-6">
                <div class="row">
                     <div class="col">
                         <h3>Rooms</h3>
                <asp:GridView ID="gv_rooms" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gv_rooms_SelectedIndexChanged" >
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
                <div class="row">
                    <div class="col">
                        <h3>Users Rooms</h3>
                        <asp:GridView ID="gv_UsersRooms" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        </div>
    </div>
</asp:Content>
