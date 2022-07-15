using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ICCS_Canteen
{
    public partial class nonveg : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
            if (!IsPostBack)
            {
                Dlbind();
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                if (dt != null)
                {
                    Label11.Text = dt.Rows.Count.ToString();
                }
                else
                {
                    Label11.Text = "0";
                }



            }

        }

        protected void Dlbind()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * from FoodTb1 where Category='Non-veg'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    dtlist.DataSource = dr;
                    dtlist.DataBind();

                }
            }
        }

        protected void dtlist_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                TextBox txtbox = (TextBox)(e.Item.FindControl("TextBox1"));
                Session["addproduct"] = "true";
                Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + txtbox.Text);
            }

        }
    }
}