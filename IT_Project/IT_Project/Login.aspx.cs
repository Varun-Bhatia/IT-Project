using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Login(object sender, EventArgs e)
    {
        String cs = @"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=ITProject;Integrated Security=True";
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM [User]", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        while(reader.Read())
        {
            if((reader["UserName"].Equals(Username.Text))&&(reader["Password"].Equals(Password.Text)))
            {
                Session["UserName"] = reader["UserName"];
                Session["UserType"] = reader["UserType"];
                if(reader["UserType"].Equals("Admin"))
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    Response.Redirect("UserHome.aspx");
                }
            }
            
        }
        Label3.Visible = true;
    }

    protected void Button_Signup(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
}