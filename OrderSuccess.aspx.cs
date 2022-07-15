using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


namespace ICCS_Canteen
{
    public partial class OrderSuccess : System.Web.UI.Page
    {

        static Boolean orderidfound;
        protected void Page_Load(object sender, EventArgs e)
        {
          
                Label3.Text = Request.QueryString["orderid"];
                Label4.Text = Label3.Text;
                findorderdate(Label4.Text);
                findName(Label4.Text);
                showgrid(Label4.Text);
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }

        private void findName(string Orderid)
        {
            String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string myquery = "select * from orderinfo where orderid='" + Orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label6.Text = ds.Tables[0].Rows[0]["class"].ToString();

            }
            con.Close();
        }

        public void showgrid(string orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("sno");
            dt.Columns.Add("Fid");
            dt.Columns.Add("FoodName");
            dt.Columns.Add("Category");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("total");
            String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            String myquery = "select * from ordertbl where orderid='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                dr["Fid"] = ds.Tables[0].Rows[i]["Fid"].ToString();
                dr["FoodName"] = ds.Tables[0].Rows[i]["FoodName"].ToString();
                dr["Category"] = ds.Tables[0].Rows[i]["Category"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                int price = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice = price * quantity;
                dr["total"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label8.Text = grandtotal.ToString();

        }       /*GridView1.FooterRow.Cells[5].Text = "Total Amount";GridView1.FooterRow.Cells[6].Text =*/
              



        public void findorderdate(string Orderid)
        {
            String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            
            string myquery = "select * from ordertbl where orderid='" + Orderid + "'";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label5.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();
               
            }

            con.Close();
        }

        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }



    }
}