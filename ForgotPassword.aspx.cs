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

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB"].ConnectionString);
        conn.Open();
        string qry = "select [Email] from Login where UserName=@uname";
        SqlCommand comd = new SqlCommand(qry, conn);
        comd.Parameters.AddWithValue("@uname", tbxUserName.Text);
        SqlDataReader dr = comd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            if (dr["Email"].ToString().Equals(tbxEMail.Text))
            {
                //firstMessage.Text = "Successful";
                btnSubmit.Visible = false;
                firstMessage.Text = "Successful!";
                lblNewPassword.Visible = true;
                tbxNewPassword.Visible = true;
                lblCheckPassword.Visible = true;
                tbxCheckPassword.Visible = true;
                btnChangePassword.Visible = true;
                lblMessage.Visible = true;
                tbxUserName.Visible = false;
                tbxEMail.Visible = false;

            }
            else

                firstMessage.Text = "Not Match";
        }
        else
        {
            firstMessage.Text = "User is not existing";
        }
        
        dr.Close();
        conn.Close();
    }

    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        try {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB"].ConnectionString);
            conn.Open();
            string qry = "update Login set Password=@password where (UserName=@uname)";
            SqlCommand comd = new SqlCommand(qry, conn);
            comd.Parameters.AddWithValue("@uname", tbxUserName.Text);
            //md5
            MD5 md5 = new MD5CryptoServiceProvider();
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(tbxNewPassword.Text));
            byte[] result = md5.Hash;
            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                strBuilder.Append(result[i].ToString("x2"));
            }
            comd.Parameters.AddWithValue("@password", strBuilder.ToString());

            comd.ExecuteNonQuery();
            conn.Close();
            lblMessage.Text = "Your password changed successfully!";
            Response.Write("<meta http-equiv='refresh' content='2; url=HomePage.aspx'>");
        }
        catch(Exception ex) {
            lblMessage.Text = "Wrong!";
            Response.Write("<meta http-equiv='refresh' content='2; url=ForgotPassword.aspx'>");
        }
        
    }

 
}