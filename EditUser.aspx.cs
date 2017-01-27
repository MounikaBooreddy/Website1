using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditUser : System.Web.UI.Page
{
    private CoffeeUsersEntities ce = new CoffeeUsersEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            string username = Request.QueryString["UserName"];
            UserDetail udd = ce.UserDetails.Single(ud => ud.UserName.Equals(username));
            this.LabelUserName.Text = udd.UserName;
            this.TextBoxEml.Text = udd.Email;
            this.TextBoxPwd.Text = udd.Password;
            this.DropDownListCntry.SelectedValue= udd.Country;

        }
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            UserDetail udd = ce.UserDetails.Single(ud => ud.UserName.Equals(LabelUserName.Text));
            if (!String.IsNullOrEmpty(this.TextBoxPwd.Text))
                udd.UserName = this.LabelUserName.Text;
            udd.Email = this.TextBoxEml.Text;
            udd.Password = this.TextBoxPwd.Text;
            udd.Country = this.DropDownListCntry.SelectedValue;
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