using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["theme"] == null)
            Theme = "Light";
        else
            Theme = Session["theme"].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserAssetRequest.aspx?AssetId=" + GridView1.SelectedValue.ToString());
    }
}