<%@ Page Title="Manage Types" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master"  AutoEventWireup="true" CodeFile="Type.aspx.cs" Inherits="Type" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="Mybody" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-center">Manage Types</h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <form>
                    <div class="mb-3">
                        <label for="TypeTb" class="form-label">Type</label>
                        <input type="text" class="form-control" id="TypeTb" runat="server">
                        <asp:RequiredFieldValidator ID="TypeTbRV" runat="server" ErrorMessage="Type is required" ControlToValidate="TypeTb" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div>
                        <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click" />&nbsp;
                        <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger" OnClick="DeleteBtn_Click" />
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
                <asp:GridView ID="gv_types" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gv_types_SelectedIndexChanged" >
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
