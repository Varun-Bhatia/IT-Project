﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            using (SqlCommand command = new SqlCommand("INSERT INTO [Assets] (AssetName,TotalQuantity,AvailableQuantity) VALUES(@AssetName,@TotalQuantity,@TotalQuantity)", con))
            {
                command.Parameters.AddWithValue("@AssetName", TbName.Text);
                command.Parameters.AddWithValue("@TotalQuantity", TbQty.Text);
                con.Open();
                command.ExecuteNonQuery();
            }
        }
    }
}