using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS;

public partial class Type : Page
{
    Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new Functions();
        ShowTypes();
    }
    private void ShowTypes()
    {
        string Query = "select TypeId as Id,Type from Type";
        gv_types.DataSource = Con.GetData(Query);
        gv_types.DataBind();
    }
    protected void SaveBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string type = TypeTb.Value;
            string Query = $"insert into Type values('{type}')";
            Con.setData(Query);
            ShowTypes();
            ErrMsg.InnerText = "Type Added Successfully!!!";
            TypeTb.Value = "";
        }
        catch(Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }
  
    protected void gv_types_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        TypeTb.Value = gv_types.SelectedRow.Cells[2].Text;
    }

    protected void EditBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string type = TypeTb.Value;
            string Query = $"update Type set Type='{type}' where TypeId={gv_types.SelectedRow.Cells[1].Text}";
            Con.setData(Query);
            ShowTypes();
            ErrMsg.InnerText = "Type Updated Successfully!!!";
            TypeTb.Value = "";
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
            
            string Query = $"delete from Type where TypeId={gv_types.SelectedRow.Cells[1].Text}";
            Con.setData(Query);
            ShowTypes();
            ErrMsg.InnerText = "Type Deleted Successfully!!!";
            TypeTb.Value = "";
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }
}