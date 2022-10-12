using HMS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : Page
{
    Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new Functions();
        ShowUsers();

    }
    private void ShowUsers()
    {
        string Query = "select UId as Id,UName as Name,UMobile as Phone,UEmail as Email,UserName,UPassword as Password,UIdProof as IdProof,UGender as Gender from Users";
        gv_users.DataSource = Con.GetData(Query);
        gv_users.DataBind();
    }

    protected void SaveBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string name = FullName.Value;
            string mobile = MobileNumber.Value;
            string email = Email.Value;
            string userName = UserName.Value;
            string password = Password.Value;
            string proof = IdProof.Value;
            string gender = Gender.Value;
            string Query = $"insert into Users values('{name}','{mobile}','{email}','{userName}','{password}','{proof}','{gender}')";
            Con.setData(Query);
            ShowUsers();
            ErrMsg.InnerText = "User Added Successfully!!!";
            FullName.Value = "";
            MobileNumber.Value = "";
            Email.Value = "";
            UserName.Value = "";
            Password.Value = "";
            IdProof.Value = "";
            Gender.Value = "";
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }

    protected void gv_users_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        FullName.Value = gv_users.SelectedRow.Cells[2].Text;
        MobileNumber.Value = gv_users.SelectedRow.Cells[3].Text;
        Email.Value = gv_users.SelectedRow.Cells[4].Text;
        UserName.Value = gv_users.SelectedRow.Cells[5].Text;
        Password.Value = gv_users.SelectedRow.Cells[6].Text;
        IdProof.Value = gv_users.SelectedRow.Cells[7].Text;
        Gender.Value = gv_users.SelectedRow.Cells[8].Text;
    }

    protected void EditBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string name = FullName.Value;
            string mobile = MobileNumber.Value;
            string email = Email.Value;
            string userName = UserName.Value;
            string password = Password.Value;
            string proof = IdProof.Value;
            string gender = Gender.Value;
            string Query = $"update Users set UName='{name}',UMobile='{mobile}',UEmail='{email}',UserName='{userName}',UPassword='{password}',UIdProof='{proof}',UGender='{gender}' where UId={gv_users.SelectedRow.Cells[1].Text}";
            Con.setData(Query);
            ShowUsers();
            ErrMsg.InnerText = "User Updated Successfully!!!";
            FullName.Value = "";
            MobileNumber.Value = "";
            Email.Value = "";
            UserName.Value = "";
            Password.Value = "";
            IdProof.Value = "";
            Gender.Value = "";
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
            string Query = $"delete from Users where UId={gv_users.SelectedRow.Cells[1].Text}";
            Con.setData(Query);
            ShowUsers();
            ErrMsg.InnerText = "Room Deleted Successfully!!!";
            FullName.Value = "";
            MobileNumber.Value = "";
            Email.Value = "";
            UserName.Value = "";
            Password.Value = "";
            IdProof.Value = "";
            Gender.Value = "";
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }
}