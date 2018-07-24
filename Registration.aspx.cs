using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB"].ConnectionString);
            conn.Open();
            string checker = "select * from Login where UserName=@uname";
            SqlCommand comd = new SqlCommand(checker, conn);
            comd.Parameters.AddWithValue("@uname", userName.Text);
            SqlDataReader dr = comd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                messageLabel.Text = "User already Exists!";
                messageLabel.ForeColor = Color.White;
            }
            dr.Close();
            conn.Close();
        }
    }

    protected void resetButton_Click(object sender, EventArgs e)
    {

    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        if (agreeCheckBox.Checked) {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Login values(@uname, @email, @password)";
                SqlCommand comd = new SqlCommand(insertQuery, conn);
                comd.Parameters.AddWithValue("@uname", userName.Text);
                comd.Parameters.AddWithValue("@email", emailTextBox.Text);
                MD5 md5 = new MD5CryptoServiceProvider();
                md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(passwordTextBox.Text));
                byte[] result = md5.Hash;
                StringBuilder strBuilder = new StringBuilder();
                for (int i = 0; i < result.Length; i++)
                {
                    strBuilder.Append(result[i].ToString("x2"));
                }
                comd.Parameters.AddWithValue("@password", strBuilder.ToString());
            
                comd.ExecuteNonQuery();
                conn.Close();
                //Response.Redirect("Manager.aspx");
                Response.Write("<meta http-equiv='refresh' content='2; url=Login.aspx'>");
                messageLabel.Text = "Registration Successful!";
                messageLabel.ForeColor = Color.White;
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }else
        {
            checkagreeLabel.Text = "Please Click Agree Box If You Still Want To Register";
        }
        
    }



    
}