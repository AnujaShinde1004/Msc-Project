using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ICCS_Canteen
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["addproduct"].ToString() == "true")
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("Fid");
                dt.Columns.Add("FoodName");
                dt.Columns.Add("Category");
                dt.Columns.Add("Price");
                dt.Columns.Add("image");
                
                dt.Columns.Add("quantity");
                dt.Columns.Add("total");




                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                        SqlConnection con = new SqlConnection(strcon);
                        String myquery = "select * from FoodTb1 where Fid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["Fid"] = ds.Tables[0].Rows[0]["Fid"].ToString();
                        dr["FoodName"] = ds.Tables[0].Rows[0]["FoodName"].ToString();
                        dr["Category"] = ds.Tables[0].Rows[0]["Category"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        
                        dr["quantity"] = Request.QueryString["quantity"];
                       Int64 price = Convert.ToInt64(ds.Tables[0].Rows[0]["price"].ToString());
                        Int64 quantity = Convert.ToInt64(Request.QueryString["quantity"].ToString());
                        Int64 totalprice = price * quantity;
                        dr["total"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("cart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                        SqlConnection con = new SqlConnection(strcon);
                        String myquery = "select * from FoodTb1 where Fid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["Fid"] = ds.Tables[0].Rows[0]["Fid"].ToString();
                        dr["FoodName"] = ds.Tables[0].Rows[0]["FoodName"].ToString();
                        dr["Category"] = ds.Tables[0].Rows[0]["Category"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        
                        dr["quantity"] = Request.QueryString["quantity"];
                        Int64 price = Convert.ToInt64(ds.Tables[0].Rows[0]["Price"].ToString());
                        Int64 quantity = Convert.ToInt64(Request.QueryString["quantity"].ToString());
                        Int64 totalprice = price * quantity;
                        dr["total"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("cart.aspx");

                    }
                }


            }
            else
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[6].Text = "Total Amount";
                    GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();

                }
            }
        }
        
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["total"].ToString());

                i = i + 1;
            }
            return gtotal;
        }
        

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaceOrder.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Response.Redirect("EditOrder.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            DataTable dt = (DataTable)Session["buyitems"];
            DataRow dr = dt.Rows[e.RowIndex];
            dr.Delete();
           
            Response.Redirect(Request.RawUrl);
        }
    }
}