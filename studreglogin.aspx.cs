using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ICCS_Canteen
{
    public partial class studreglogin : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("INSERT INTO suser Values(@uname,@email,@password)", con);
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Parameters.AddWithValue("@uname", uname.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@password", pass.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Register successfully');</Script>");

                Response.Redirect("studlogin.aspx");

            }


        }
    }
}