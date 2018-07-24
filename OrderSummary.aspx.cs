using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        double price = 0.0;
        for (int i = 0; i < orderGridView.Rows.Count; i++)
        {
            price += Convert.ToDouble(orderGridView.Rows[i].Cells[6].Text);
        }
        tbxTotal.Text = "$" + price.ToString();
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("Thanks.aspx");
    }

    protected void addressGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        addressDetailsView.ChangeMode(DetailsViewMode.ReadOnly);
        addressDetailsView.PageIndex = addressGridView.SelectedIndex;
    }
}