using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace ICCS_Canteen
{
    public partial class EditOrder : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
              if (Session["addproduct"].ToString() == "true")
                {
                    Session["addproduct"] = "false";
                }
            else
            {
                if (Request.QueryString["sno"] != null)
                {
                    dt = (DataTable)Session["buyitems"];


                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        int sr;
                        int sr1;
                        sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                        Label2.Text = Request.QueryString["sno"];
                        Label3.Text = sr.ToString();
                        sr1 = Convert.ToInt32(Label3.Text);
                        //sr1 = sr1 + 1;


                        if (sr == sr1)
                        {
                            Label2.Text = dt.Rows[i]["sno"].ToString();
                            Label3.Text = dt.Rows[i]["Fid"].ToString();
                            Label4.Text = dt.Rows[i]["FoodName"].ToString();
                            Label5.Text = dt.Rows[i]["Category"].ToString();
                            Label6.Text = dt.Rows[i]["Price"].ToString();
                            Label9.Text = dt.Rows[i]["image"].ToString();
                            TextBox1.Text = dt.Rows[i]["quantity"].ToString();
                            Label8.Text = dt.Rows[i]["total"].ToString();

                            break;

                        }
                    }
                }
                else
                {
                }

            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int q;
            q = Convert.ToInt32(TextBox1.Text);
            int cost;
            cost = Convert.ToInt32(Label6.Text);
            int total;
            total = cost * q;
            Label8.Text = total.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());

                sr1 = Convert.ToInt32(Label3.Text);



                if (sr == sr1)
                {
                    dt.Rows[i]["sno"] = Label2.Text;
                    dt.Rows[i]["Fid"] = Label3.Text;
                    dt.Rows[i]["FoodName"] = Label4.Text;
                    dt.Rows[i]["Category"] = Label5.Text;
                    dt.Rows[i]["price"] = Label6.Text;
                    dt.Rows[i]["image"] = Label9.Text;
                    dt.Rows[i]["quantity"] = TextBox1.Text;
                    dt.Rows[i]["totalprice"] = Label8.Text;
                    dt.AcceptChanges();

                    break;

                }
            }
            Response.Redirect("cart.aspx");
        }

      
    }
    
}