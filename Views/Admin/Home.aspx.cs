using HMS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : Page
{
    Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new Functions();
        AdminHeading.Text = $"Welcome {Session["UserName"]}";
        GetAvailable();
        GetBooked();
        GetUsers();
        GetEntryCount();
        GetExitCount();
    }
    private void GetAvailable()
    {
        string Query = "select * from Room where Status='Available'";
        DataTable tb = Con.GetData(Query);
        int count = tb.Rows.Count;
        AvailableRooms.Text = count.ToString();
    }

    private void GetUsers()
    {
        string Query = "select * from Users";
        DataTable tb = Con.GetData(Query);
        int count = tb.Rows.Count;
        if (count > 0)
        {
            Users.Text = count.ToString();
        }
        else
        {
            Users.Text = "No user is registered yet";
        }
    }
    private void GetBooked()
    {
        string Query = "select * from Room where Status='Booked'";
        DataTable tb = Con.GetData(Query);
        int count = tb.Rows.Count;
        if(count>0)
        {
            BookedRooms.Text = count.ToString();
        }
        else
        {
            BookedRooms.Text = "All rooms are available";
        }
        
    }

    private void GetEntryCount()
    {
        string date = DateTime.Now.ToString("yyyy - MM - dd");
        string Query = $"select * from Booking where DateIn='{date}'";
        DataTable tb = Con.GetData(Query);
        int count = tb.Rows.Count;
        if (count > 0)
        {
            TEntry.Text = count.ToString();
        }
        else
        {
            TEntry.Text = "There is no booking till now";
        }

    }

    private void GetExitCount()
    {
        string date = DateTime.Now.ToString("yyyy - MM - dd");
        string Query = $"select * from Booking where DateOut='{date}'";
        DataTable tb = Con.GetData(Query);
        int count = tb.Rows.Count;
        if (count > 0)
        {
            TExit.Text = count.ToString();
        }
        else
        {
            TExit.Text = "There is nobody to exit today till now";
        }

    }
}