using HMS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : Page
{
    Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new Functions();
    }

    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        if(AdminCheck.Checked)
        {
            if(EmailTb.Value == "admin@gmail.com" && PasswordTb.Value == "prince")
            {
                Session["UserName"] = EmailTb.Value;
                Response.Redirect("~/Views/Admin/Home.aspx");
            }
            else
            {
                ErrMsg.InnerText = "Invalid Login";
            }

        }
        else
        {

            string Query = $"select * from Users where UEmail='{EmailTb.Value}' and UPassword='{PasswordTb.Value}'";
            DataTable tb = Con.GetData(Query);
            if(tb.Rows.Count == 0)
            {
                ErrMsg.InnerText = "Invalid Login";
            }
            else
            {
                Session["UserName"] = EmailTb.Value;
                Session["UId"] = Convert.ToInt32(tb.Rows[0][0].ToString());
                Session["Name"] = tb.Rows[0][1].ToString();
                Response.Redirect("~/Views/Users/Home.aspx");

            }
        }
        
    }

    protected void SignUpBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Views/Admin/SignUp.aspx");
    }
}