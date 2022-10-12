using HMS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : Page
{
    Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new Functions();

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
            ErrMsg.InnerText = "User Added Successfully!!!";
            Response.Redirect("~/Views/Admin/Login.aspx");
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;
        }
    }
   
}