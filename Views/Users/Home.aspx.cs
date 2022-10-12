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
        AdminHeading.Text = $"Welcome {Session["Name"]}";
        GetAvailable();
        GetBooked();
    }
    private void GetAvailable()
    {
        string Query = "select * from Room where Status='Available'";
        DataTable tb = Con.GetData(Query);
        int count = tb.Rows.Count;
        AvailableRooms.Text = count.ToString();
    }

    
    private void GetBooked()
    {
        string Query = $"select * from Room where RId IN  (select BRoom as RId from Users as U inner join Booking as B on U.UId = B.UserId where UId={Session["UId"]})";
        DataTable tb = Con.GetData(Query);
        int count = tb.Rows.Count;
        if(count>0)
        {
            BookedRooms.Text = count.ToString();
        }
        else
        {
            BookedRooms.Text = "Currently you have no bookings";
        }
        
    }
}