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
    public partial class admin : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if(con.State==System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from admin where username='" + TextBox2.Text.Trim() + "' and pass='" + TextBox1.Text.Trim() + "'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["pass"] = dr.GetValue(2).ToString();

                    }
                    Response.Redirect("adminHome.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Invalid name');</Script>");
                }
                
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

       
    }
}