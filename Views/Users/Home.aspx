<%@ Page Title="Home" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master"  AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="Mybody" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4"><h1 class="text-center"><asp:Label ID="AdminHeading" runat="server" Text="Label"/></h1></div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <form>
                    <div class="mb-3">
                        <h3>Available Rooms</h3>
                        <asp:Label ID="AvailableRooms" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="mb-3">
                        <h3>Current Bookings</h3>
                        <asp:Label ID="BookedRooms" runat="server" Text="Label"></asp:Label>
                    </div>
            </form>
            </div>
        </div>
    </div>
</asp:Content>
