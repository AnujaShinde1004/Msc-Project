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
   
    public partial class staff_info : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                getvalue();
            }
        }
        private void getvalue()
        {
            string selectSQL = "SELECT * from Staff";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Staff");

            staffgrid.DataSource = ds;
            staffgrid.DataBind();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);
            if (IsValid)
            {

                SqlCommand cmd = new SqlCommand("INSERT INTO Staff Values(@sname,@email,@contact,@password)", con);
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Parameters.AddWithValue("@sname", sname.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@contact", contact.Text);
                cmd.Parameters.AddWithValue("@password", pass.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                getvalue();

                Response.Write("<script>alert('staff added successfully');</Script>");

                sname.Text = "";
                email.Text = "";
                contact.Text = "";
                pass.Text = "";

            }


        }

        protected void btn2_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);
            if (IsValid)
            {
                
                SqlCommand cmd = new SqlCommand("delete Staff where sname=@sname", con);
                cmd.Parameters.AddWithValue("@sname",sname.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                getvalue();

                Response.Write("<script>alert('record delete successfully');</Script>");
                sname.Text = "";
                email.Text = "";
                contact.Text = "";
                pass.Text = "";

            }

        }
    }
}