using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ICCS_Canteen
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        DataTable dt;
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
                        dr["sno"] = 1;
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
                        /*GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("cart.aspx");
                        */
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
            Label4.Text = DateTime.Now.ToShortDateString();
            findorderid();
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

        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for(int i=0;i<5;i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid = "order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString()+new string(mypass);
            Label3.Text = orderid;
        }   

        public void saveaddress()
        {
            String updatepass = "insert into orderinfo(orderid,class,mobile_no)values('" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatepass;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];

            for (int i=0; i <= dt.Rows.Count-1; i++)
            {
                String updatepass = "insert into ordertbl(orderid,sno,Fid,FoodName,Category,Price,quantity,dateoforder,name)values('" + Label3.Text + "','" + dt.Rows[i]["sno"] + "','" + dt.Rows[i]["Fid"] + "','" + dt.Rows[i]["FoodName"] + "','" + dt.Rows[i]["Category"] + "','" + dt.Rows[i]["Price"] + "','" + dt.Rows[i]["quantity"] + "','" + Label4.Text + "','"+TextBox1.Text+"')";
                String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = updatepass;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            saveaddress();
            Response.Redirect("OrderSuccess.aspx?orderid=" +Label3.Text);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }


    }
}
