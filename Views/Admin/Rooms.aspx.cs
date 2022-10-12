using HMS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rooms : Page
{
    Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new Functions();
        ShowRooms();
        ShowUsersRooms();
        GetTypes();
    }

    private void ShowRooms()
    {
        string Query = "select RId as Id,RNo as RoomNo,RType as Type,RLocation as Location,RPrice as Price,RCapacity as Capacity,Status as Availability from Room";
        gv_rooms.DataSource = Con.GetData(Query);
        gv_rooms.DataBind();
    }
   
    private void ShowUsersRooms()
    {
        string Query = "select BRoom as RId,UserId from Users as U inner join Booking as B on U.UId = B.UserId;";
        gv_UsersRooms.DataSource = Con.GetData(Query);
        gv_UsersRooms.DataBind();
    }

    private void GetTypes()
    {
        string Query = "select * from Type";
        RType.DataTextField = Con.GetData(Query).Columns["Type"].ToString();
        RType.DataValueField = Con.GetData(Query).Columns["TypeId"].ToString();
        RType.DataSource = Con.GetData(Query);
        RType.DataBind();
    }

    private void UpdateRooms()
    {
        try
        {
            string Query = $"delete from Booking where BRoom={gv_rooms.SelectedRow.Cells[1].Text}";
            Con.setData(Query);
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }

    protected void SaveBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string roomNumber = RNo.Value;
            string type = RType.SelectedValue.ToString();
            string location = Location.Value;
            string price = RPrice.Value;
            string capacity = RCapacity.Value;
            string status = RStatus.Value;
            string Query = $"insert into Room values({Convert.ToInt32(roomNumber)},'{type}','{location}','{price}','{capacity}','{status}')";
            Con.setData(Query);
            ShowRooms();
            ErrMsg.InnerText = "Room Added Successfully!!!";
            RNo.Value="";
            RType.SelectedIndex=-1;
            Location.Value="";
            RPrice.Value="";
            RCapacity.Value="";
            RStatus.Value="";
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }
  
    protected void gv_rooms_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        RNo.Value = gv_rooms.SelectedRow.Cells[2].Text;
        RType.SelectedValue = gv_rooms.SelectedRow.Cells[3].Text;
        Location.Value = gv_rooms.SelectedRow.Cells[4].Text;
        RPrice.Value = gv_rooms.SelectedRow.Cells[5].Text;
        RCapacity.Value = gv_rooms.SelectedRow.Cells[6].Text;
        RStatus.Value = gv_rooms.SelectedRow.Cells[7].Text;
    }

    protected void EditBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string roomNumber = RNo.Value;
            string type = RType.SelectedValue.ToString();
            string location = Location.Value.ToString();
            string price = RPrice.Value.ToString();
            string capacity = RCapacity.Value.ToString();
            string status = RStatus.Value.ToString();
            string Query = $"update Room set RNo={Convert.ToInt32(roomNumber)},RType='{type}',RLocation='{location}',RPrice='{price}',RCapacity='{capacity}',Status='{status}' where RId={gv_rooms.SelectedRow.Cells[1].Text}";
            Con.setData(Query);
            ShowRooms();
            ShowUsersRooms();
            if (status == "Available")
            {
                UpdateRooms();
            }
            ErrMsg.InnerText = "Room Updated Successfully!!!";
            RNo.Value = "";
            RType.SelectedIndex = -1;
            Location.Value = "";
            RPrice.Value = "";
            RCapacity.Value = "";
            RStatus.Value = "";
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }

    protected void DeleteBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string Query = $"delete from Room where RId={gv_rooms.SelectedRow.Cells[1].Text}";
            Con.setData(Query);
            ShowRooms();
            ShowUsersRooms();
            ErrMsg.InnerText = "Room Deleted Successfully!!!";
            RNo.Value = "";
            RType.SelectedIndex = -1;
            Location.Value = "";
            RPrice.Value = "";
            RCapacity.Value = "";
            RStatus.Value = "";
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }
}