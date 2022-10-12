<%@ Page Title="Manage Booking" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master"  AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-center"><asp:Label ID="UserHeading" runat="server" Text="Label"></asp:Label> </h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <div class="col">
                        <br />
                        <div class="mb-3">
                            <label for="RoomTb" class="form-label">Room</label>
                            <input type="text" class="form-control" id="RoomTb" runat="server" >
                            <asp:RequiredFieldValidator ID="RoomTbRV" runat="server" ErrorMessage="Room is required" ControlToValidate="RoomTb" Display="None"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label for="CheckInTb" class="form-label">Check In</label>
                            <input type="date" class="form-control" id="CheckInTb" runat="server" >
                            <asp:RequiredFieldValidator ID="CheckInTbRV" runat="server" ErrorMessage="CheckIn date is required" ControlToValidate="CheckInTb" Display="None"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label for="CheckOutTb" class="form-label">Check Out</label>
                            <input type="date" class="form-control" id="CheckOutTb" runat="server" >
                            <asp:RequiredFieldValidator ID="CheckOutTbRV" runat="server" ErrorMessage="CheckOut date is required" ControlToValidate="CheckOutTb" Display="None"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label for="AmountTb" class="form-label">Amount</label>
                            <input type="text" class="form-control" id="AmountTb" runat="server" >
                            <asp:RequiredFieldValidator ID="AmountTbRV" runat="server" ErrorMessage="Amount is required" ControlToValidate="AmountTb" Display="None"></asp:RequiredFieldValidator>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div>
                                    <label id="ErrMsg" runat="server" class="text-danger"></label>
                                    <br />
                                    <asp:Button ID="BookBtn" runat="server" Text="Book" class="btn btn-success" OnClick="BookBtn_Click"/>
                                    <br />
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="col-md-6">
                 <div class="row">
                     <div class="col">
                         <h3>Available Rooms</h3>
                <asp:GridView ID="gv_Rooms" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gv_Rooms_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Choose" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Book"></asp:LinkButton>
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
                        <h3>Current Bookings</h3>
                        <asp:GridView ID="gv_Booking" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None"  >
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
