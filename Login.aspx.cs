using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB"].ConnectionString);
        conn.Open();
        string qry = "select [Password] from Login where UserName=@uname";
        SqlCommand cmd = new SqlCommand(qry, conn);
        cmd.Parameters.AddWithValue("@uname", userNameTextBox.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(passwordTextBox.Text));
            byte[] result = md5.Hash;
            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                strBuilder.Append(result[i].ToString("x2"));
            }
            if (dr["Password"].ToString().Equals(strBuilder.ToString()))
            {
                messageLabel.Text = "Sucessful Login!";
                Session["user"] = userNameTextBox.Text;
                Response.Write("<meta http-equiv='refresh' content='2; url=HomePage.aspx'>");
            }
            else
            {
                messageLabel.Text = "User name and password do not match!";
            }
        }
        else
        {
            messageLabel.Text = "User do not exist, please create an account!";
        }
        dr.Close();
        conn.Close();
    }

    protected void registrationButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}