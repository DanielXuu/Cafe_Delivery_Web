using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thanks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB"].ConnectionString);
        string qry = "Select CafeSize, CafeStyle, Extras, Price from [cafeOrder] where UserName=@uname";
        SqlCommand cmd = new SqlCommand(qry, conn);
        cmd.Parameters.AddWithValue("@uname", Session["user"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gvDisplay.DataSource = ds;
        gvDisplay.DataBind();

        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        double price = 0.0;
        while (rdr.Read())
        {
            price += Convert.ToDouble(rdr["Price"].ToString());
        }
        lblTotal.Text = "The total price is $" + price.ToString();
        rdr.Close();
        conn.Close();
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "Thanks For Your Purchase, Your Cafe Is On The Way!";
        lblTotal.Visible = false;
        gvDisplay.Visible = false;
        btnConfirm.Visible = false;
        Response.Write("<meta http-equiv='refresh' content='5; url=HomePage.aspx'>");
    }
}