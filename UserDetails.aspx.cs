using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDetails : System.Web.UI.Page
{

    private CoffeeUsersEntities ce = new CoffeeUsersEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            FillData();

    }
    private void FillData()
    {
        this.GridView1.DataSource = ce.UserDetails.Select
            (acc => new
            {
                UserName = acc.UserName,
                Email = acc.Email,
                Password = acc.Password,
                Country = acc.Country



            }).ToList();
        this.GridView1.DataBind();
    }


   

    protected void LinkButtonDelete_Click(object sender, EventArgs e)
    {
        LinkButton lb = (LinkButton)sender;
        HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldUsername");
        UserDetail udd = ce.UserDetails.Single(ud => ud.UserName.Equals(hd.Value));
        ce.UserDetails.Remove(udd);
        ce.SaveChanges();

        FillData();


    }
}