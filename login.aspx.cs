using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    CoffeeUsersEntities ce = new CoffeeUsersEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }



   



    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            UserDetail ud = new UserDetail();
            ud.UserName = this.TextBoxUN.Text;
            ud.Email = this.TextBoxEml.Text;
            ud.Password = this.TextBoxPwd.Text;
            ud.Country = this.DropDownListCntry.SelectedValue;
            ce.UserDetails.Add(ud);
            ce.SaveChanges();
            Response.Redirect("UserDetails.aspx");

        }
        catch
        {
            this.LabelMessage.Text = "Can't add new account";
            this.LabelMessage.Visible = true;
        }
    }
}