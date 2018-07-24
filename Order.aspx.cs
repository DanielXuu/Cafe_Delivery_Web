using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Write("<script language=javascript>\n var agree; agree=confirm('You have to log in first');\n if(agree) window.location=\"Login.aspx\";\n else window.location=\"HomePage.aspx\"</script>");
        }

        else
        {
            if (ddlSize.SelectedIndex != 0)
            {
                ddlStyle.Visible = true;
                Label4.Visible = true;
            }
            if (ddlStyle.SelectedIndex != 0)
            {
                Label6.Visible = true;
                cbxToppings.Visible = true;
                imgCafe.Visible = true;
                btnNext.Visible = true;
            }
        }
    }

    protected void cbxToppings_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cbxToppings.Items.FindByText("Whipped Cream").Selected)
        {
            imgCream.Visible = true;
        }
        else
        {
            imgCream.Visible = false;
        }
        if (cbxToppings.Items.FindByText("Caramel").Selected)
        {
            imgCaramel.Visible = true;
        }
        else
        {
            imgCaramel.Visible = false;
        }
        if (cbxToppings.Items.FindByText("Soy Milk").Selected)
        {
            imgMilk.Visible = true;
        }
        else
        {
            imgMilk.Visible = false;
        }
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        decimal price = 0;
        decimal tax = 0.07m;
        string toppings = " ";
        price += Convert.ToDecimal(ddlSize.SelectedValue);
        for (int i = 0; i < cbxToppings.Items.Count; i++)
        {
            if (cbxToppings.Items[i].Selected)
            {
                toppings += cbxToppings.Items[i].Text + ",";
                price += Convert.ToDecimal(cbxToppings.SelectedValue);
            }
        }
        // insert data to database
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB"].ConnectionString);
        conn.Open();
        string qry = "insert into [cafeOrder] values (@id, @userName, @cafeSize, @cafeType, @extras, @price)";
        SqlCommand comd = new SqlCommand(qry, conn);
        comd.Parameters.AddWithValue("@userName", Session["user"].ToString());
        comd.Parameters.AddWithValue("@cafeSize", ddlSize.SelectedItem.Text);
        comd.Parameters.AddWithValue("@cafeType", ddlStyle.SelectedItem.Text);
        comd.Parameters.AddWithValue("@extras", toppings);
        comd.Parameters.AddWithValue("@price", price + price * tax);

        try
        {
            Guid newGuid = Guid.NewGuid();
            string id = newGuid.ToString().Substring(0, 8);
            Session["orderID"] = id;
            comd.Parameters.AddWithValue("@id", id);
            comd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
            Response.Redirect("Order.aspx");
        }
        conn.Close();
        Response.Redirect("OrderSummary.aspx");
    }
}