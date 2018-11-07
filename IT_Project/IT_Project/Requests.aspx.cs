using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
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

    }

    protected void BtnApprove_Click(object sender, EventArgs e)
    {
        String cs = WebConfigurationManager.ConnectionStrings["ITProjectConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(cs))
        {
            string query = "UPDATE [Requests] SET [Status] = 'Approved' " +
                           ", [DateofApproval] = @DateofApproval" +
                " WHERE [RequestId] = @RequestId";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                string txt = (sender as Button).CommandArgument;
                cmd.Parameters.AddWithValue("RequestId", txt);
                cmd.Parameters.AddWithValue("DateofApproval", System.DateTime.Now);
                conn.Open();
                try
                {
                    if (cmd.ExecuteNonQuery() <= 0)
                        LblDetails.Text = "Operation Failed.";
                }
                catch (Exception ex)
                {

                }
            }
        }
        Response.Redirect("Requests.aspx");
    }

    protected void BtnReject_Click(object sender, EventArgs e)
    {
        String cs = WebConfigurationManager.ConnectionStrings["ITProjectConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(cs))
        {
            string query = "UPDATE [Requests] SET [Status] = 'Rejected'"
                + " WHERE [RequestId] = @RequestId";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("RequestId", (sender as Button).CommandArgument);
                conn.Open();
                if (cmd.ExecuteNonQuery() <= 0)
                    LblDetails.Text = "Operation Failed.";
            }
        }

        Response.Redirect("Requests.aspx");
    }
}