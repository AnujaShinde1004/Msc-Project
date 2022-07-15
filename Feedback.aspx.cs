using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ICCS_Canteen
{
    public partial class Feedback : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

  

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (IsValid)
            {
                SqlCommand cmd = new SqlCommand("insert into feedback values(@email,@message)", con);
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@message", txtMessage.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('feedback send successfully');</Script>");

                
            }

            
        }


    }
}