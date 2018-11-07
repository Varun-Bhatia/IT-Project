using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("Theme");
        Page.Theme = cookie["Theme"];

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("Theme");
        Label1.Text = cookie["Theme"];
    }
}