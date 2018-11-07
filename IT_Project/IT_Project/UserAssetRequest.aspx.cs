using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    String cs = @"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=ITProject;Integrated Security=True";
    int avb = 0;
    String aname = "";
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["theme"] == null)
            Theme = "Light";
        else
            Theme = Session["theme"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        String qry = "SELECT * FROM [Assets] WHERE [AssetId]=" + Request.QueryString["AssetId"];
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        AssetName.Text = dr["AssetName"].ToString();
        aname= dr["AssetName"].ToString();
        AQuantity.Text = dr["AvailableQuantity"].ToString();
        int.TryParse(dr["AvailableQuantity"].ToString(), out avb);
        con.Close();
    }

        protected void Button1_Click(object sender, EventArgs e)
    {
        int req = 0;
        int.TryParse(Quantity.Text, out req);
        if (avb >= req)
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand command = new SqlCommand("INSERT INTO [Requests] VALUES(@UserName,@AssetId,@Status,@DateofApproval,@QuantityRequested,@AssetName)", con);
            command.Parameters.AddWithValue("@UserName", Session["UserName"].ToString());
            command.Parameters.AddWithValue("@AssetId", Request.QueryString["AssetId"]);
            command.Parameters.AddWithValue("@Status", "Pending");
            DateTime dt = System.DateTime.Now;
            command.Parameters.AddWithValue("@DateofApproval", dt);
            command.Parameters.AddWithValue("@QuantityRequested", req);
            command.Parameters.AddWithValue("@AssetName", aname);
            command.ExecuteNonQuery();
            command = new SqlCommand("UPDATE Assets SET AvailableQuantity = " + (avb-req) + " WHERE AssetId =\'" + Request.QueryString["AssetId"] + "\'", con);
            command.ExecuteNonQuery();
            con.Close();
            Response.Redirect("UserHistory.aspx");
        }
        else
        {
            Label1.Text = "Quantity requested more than available";
            Label1.Visible = true;
        }
    }
}