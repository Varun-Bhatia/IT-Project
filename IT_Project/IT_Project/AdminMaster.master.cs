using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        HttpCookie httpCookie = Request.Cookies["Theme"];
        if (httpCookie == null)
        {
            httpCookie = new HttpCookie("Theme");
            httpCookie["Theme"] = "Light";
        }
        DdlTheme.SelectedValue = Page.Theme = httpCookie["Theme"];
        Response.Cookies.Add(httpCookie);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["LoggedIn"] == null || (Session["LoggedIn"] as string).Equals("User"))
        //    Response.Redirect("Login.aspx");
        LblWelcome.Text = "Welcome " + Session["UserName"];
    }

    protected void DdlTheme_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie httpCookie = Request.Cookies["Theme"];
        if (httpCookie == null)
            httpCookie = new HttpCookie("Theme");
        httpCookie["Theme"] = DdlTheme.SelectedValue;
        Response.Cookies.Add(httpCookie);
    }
}
