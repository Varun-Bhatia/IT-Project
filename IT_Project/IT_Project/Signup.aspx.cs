using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Password_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if((Password.Text).Equals(CPassword.Text))
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(IsValid)
        {
            String cs = WebConfigurationManager.ConnectionStrings["ITProjectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand command = new SqlCommand("INSERT INTO [User] VALUES(@Password,@UserType,@Email,@UserName)", con);
            //command.Parameters.AddWithValue("@UserId", "6");
            command.Parameters.AddWithValue("@Password", Password.Text);
            command.Parameters.AddWithValue("@UserType", "User");
            command.Parameters.AddWithValue("@Email", Email.Text);
            command.Parameters.AddWithValue("@UserName", Username.Text);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SignupSuccess.aspx");
        }
    }
}