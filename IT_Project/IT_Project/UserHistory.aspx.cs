using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            String status = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
            if (status.Equals("Approved"))
            {
                DateTime time = (DateTime)(DataBinder.Eval(e.Row.DataItem, "DateofApproval"));
                TimeSpan ts = DateTime.Now.Subtract(time);

                if (ts.TotalDays > 7)
                {
                    e.Row.BackColor = System.Drawing.Color.Red;

                }
                else
                {
                    e.Row.BackColor = Color.Green;
                }
            }
            else
            {
                e.Row.BackColor = Color.Yellow;

            }
        }
    }
}