using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;

public partial class Default2 : System.Web.UI.Page
{
    HttpCookie httpCookie;
    protected void Page_PreInit(object sender, EventArgs e)
    {
        httpCookie = Request.Cookies["Theme"];
        if (httpCookie == null)
        {
            httpCookie = new HttpCookie("Theme");
            httpCookie["Theme"] = "Light";
            Page.Theme = "Light";
            httpCookie.Expires.AddHours(1);
            Response.Cookies.Add(httpCookie);

        }
        else
        {
            Page.Theme = httpCookie["Theme"].ToString();
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DropDownList1.Items.Add("Light");
            DropDownList1.Items.Add("Dark");
            httpCookie = Request.Cookies["Theme"];
            if (httpCookie != null)
            {
                DropDownList1.Items.FindByValue(httpCookie["Theme"].ToString()).Selected = true;

            }
        }
        String cs = WebConfigurationManager.ConnectionStrings["ITProjectConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(cs))
        {
            string query = "SELECT COUNT(DISTINCT [AssetId]) as Count FROM [Assets]";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        LblAssets.Text = "You have " + reader["Count"] + " Assets";
                    }
                }
                cmd.CommandText = "SELECT COUNT(DISTINCT [RequestId]) as Count FROM [Requests] WHERE [Status] = 'Pending'";
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        LblRequests.Text = "You have " + reader["Count"] + " pending requests";
                    }
                }
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        httpCookie = new HttpCookie("Theme");
        httpCookie["Theme"] = DropDownList1.SelectedValue;
        Response.Cookies.Add(httpCookie);
        Server.Transfer(Request.FilePath);
    }
}