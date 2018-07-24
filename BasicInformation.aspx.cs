using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Write("<script language=javascript>\n var agree; agree=confirm('You have to log in first');\n if(agree) window.location=\"Login.aspx\";\n else window.location=\"HomePage.aspx\"</script>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB"].ConnectionString);
            string qry = "select UserName, Add_Name, AddressLine1, AddressLine2, Zipcode, Phone from Customer where UserName=@uname";
            SqlCommand comd = new SqlCommand(qry, conn);
            comd.Parameters.AddWithValue("@uname", Session["user"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(comd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gvDisplay.DataSource = ds;
            gvDisplay.DataBind();
        }

    }

    protected void gvDisplay_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}