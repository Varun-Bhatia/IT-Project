using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMaster : System.Web.UI.MasterPage
{
    /*HttpCookie httpCookie;
    protected void Page_PreInit(object sender, EventArgs e)
    {
        httpCookie = Request.Cookies["Theme"];
        if (httpCookie == null)
        {
            // httpCookie = new HttpCookie("Theme");
            //httpCookie["Theme"] = "Light";
            Page.Theme = "Light";
            //
        }
        else
        {
            Page.Theme = httpCookie["Theme"].ToString();
        }

    }*/

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["LoggedIn"] == null || (Session["LoggedIn"] as string).Equals("User"))
        //    Response.Redirect("Login.aspx");
        LblWelcome.Text = "Welcome " + Session["UserName"];
        /*if (!IsPostBack)
        {
            DdlTheme.Items.Add("Light");
            DdlTheme.Items.Add("Dark");
            httpCookie = Request.Cookies["Theme"];
            if(httpCookie!=null)
            {
                DdlTheme.Items.FindByValue(httpCookie["Theme"].ToString()).Selected = true;

            }

        }*/
    }

   /* protected void DdlTheme_SelectedIndexChanged(object sender, EventArgs e)
    {
            //httpCookie = new HttpCookie("Theme");
            //httpCookie["Theme"] = DdlTheme.SelectedValue;
            //Response.Cookies.Add(httpCookie);
            //Server.Transfer(Request.FilePath);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        httpCookie = new HttpCookie("Theme");
        httpCookie["Theme"] = DdlTheme.SelectedValue;
        Response.Cookies.Add(httpCookie);
        Server.Transfer(Request.FilePath);

    }*/
}
