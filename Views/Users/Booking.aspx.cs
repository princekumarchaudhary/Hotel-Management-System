using HMS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Booking : Page
{
    Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new Functions();
        UserHeading.Text = $"Welcome {Session["Name"]}";
        ShowRooms();
        ShowBookings();
    }

    private void ShowRooms()
    {
        string Query = "select RId as Id,RNo as RoomNo,RType as Type,RLocation as Location,RPrice as Price,RCapacity as Capacity,Status as Availability from Room where Status='Available'";
        gv_Rooms.DataSource = Con.GetData(Query);
        gv_Rooms.DataBind();
    }
    private void ShowBookings()
    {
        string Query = $"select * from Room where RId IN  (select BRoom as RId from Users as U inner join Booking as B on U.UId = B.UserId where UId={Session["UId"]})";
        gv_Booking.DataSource = Con.GetData(Query);
        gv_Booking.DataBind();
    }
    private void UpdateBooking()
    {
        try
        {
            string Query = $"update Room set Status='Booked' where RId={gv_Rooms.SelectedRow.Cells[1].Text}";
            Con.setData(Query);
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }
    
    private int GetAmount()
    {
        DateTime CheckIn = Convert.ToDateTime(CheckInTb.Value);
        DateTime CheckOut = Convert.ToDateTime(CheckOutTb.Value);
        TimeSpan time = CheckOut.Subtract(CheckIn);
        int TotalDays = Convert.ToInt32(time.TotalDays);
        int TotalCost = TotalDays * Convert.ToInt32(gv_Rooms.SelectedRow.Cells[6].Text);
        return TotalCost;
    }
    protected void gv_Rooms_SelectedIndexChanged(object sender, EventArgs e)
    {
        RoomTb.Value = gv_Rooms.SelectedRow.Cells[1].Text;
        AmountTb.Value = gv_Rooms.SelectedRow.Cells[5].Text;
    }

    protected void BookBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string date = System.DateTime.Today.Date.ToString();
            int room = Convert.ToInt32(RoomTb.Value);
            string dateIn = CheckInTb.Value;
            string dateOut = CheckOutTb.Value;
            int TotalCost = GetAmount();
            int uId = Convert.ToInt32(Session["UId"]);
            string Query = $"insert into Booking values('{date}',{room},'{dateIn}','{dateOut}',{TotalCost},{uId})";
            Con.setData(Query);
            UpdateBooking();
            ShowRooms();
            ShowBookings();
            ErrMsg.InnerText = "Room Booked Successfully!!!";
            RoomTb.Value = "";
            AmountTb.Value = "";
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }
}