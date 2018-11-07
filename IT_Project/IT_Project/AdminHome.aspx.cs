using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
}