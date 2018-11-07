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
        if (Session["theme"] == null)
            Theme = "Light";
        else
            Theme = Session["theme"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Light");
            DropDownList1.Items.Add("Dark");
            if (Session["theme"] != null)
                DropDownList1.Items.FindByValue(Session["theme"].ToString()).Selected = true;
        }
    }

    protected void theme_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["theme"] = DropDownList1.SelectedItem.Text;
        Server.Transfer(Request.FilePath);
    }
}