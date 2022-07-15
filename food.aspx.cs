using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace ICCS_Canteen
{
    public partial class food : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

               
            }
        }

        private void getvaluedata()
        {
            String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * from FoodTb1", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    foodgrid.DataSource = dr;
                    foodgrid.DataBind();

                }
            }
        }

        
        protected void addbutton_Click1(object sender, EventArgs e)
        {
            if(imagefupload.HasFile)
            {
                try
                {

                    string fname = Path.GetFileName(imagefupload.FileName);
                    imagefupload.SaveAs(Server.MapPath("image" + fname));
                    //string str = imagefupload.FileName;
                    // imagefupload.PostedFile.SaveAs(Server.MapPath("~/images/Upload/" + str));
                    // string Image = "~/Upload/" + str.ToString();

                    using (SqlConnection con = new SqlConnection(strcon))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into FoodTb1 values('" + txtfoodname.Text + "','" + categoryDD.SelectedValue + "','" + txtprize.Text + "','" + imagefupload.FileName + "')", con);

                        // SqlCommand cmd = new SqlCommand("insert into FoodTb1 values (@FoodName, @Category,@Price, @Image)", con);
                        // cmd.CommandType = CommandType.Text;
                        int t = cmd.ExecuteNonQuery();
                        if (t > 0)
                        
                        {
                            Response.Write("<script>alert('record send successfully');</Script>");
                        }
                        //cmd.Parameters.AddWithValue("@FoodName", txtfoodname.Text);
                        //cmd.Parameters.AddWithValue("@Category", categoryDD.SelectedValue);
                        //cmd.Parameters.AddWithValue("@Price", txtprize.Text);
                        //cmd.Parameters.AddWithValue("@Image", Image);


                        //SqlParameter photoprmtr = new SqlParameter("@Image", Image);
                        //photoprmtr.Value = DBNull.Value;
                        //cmd.Parameters.Add(photoprmtr);

                        //con.Open();
                        //cmd.ExecuteNonQuery();
                        //con.Close();

                        getvaluedata();

                        //Response.Write("<script>alert('record send successfully');</Script>");

                        txtfoodname.Text = "";
                        categoryDD.SelectedIndex = 0;
                        txtprize.Text = "";
                    }
                }
                catch(Exception ex)
                {
                    lblmsg.Text = "upload sucessful" + ex.Message;
                }

            }
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("update FoodTb1 set Category=@Category,Price=@Price where FoodName=@FoodName", con);
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@FoodName", txtfoodname.Text);
            cmd.Parameters.AddWithValue("@Category", categoryDD.SelectedValue);
            cmd.Parameters.AddWithValue("@Price", txtprize.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            getvaluedata();


            Response.Write("<script>alert('record Update successfully');</Script>");
            txtfoodname.Text = "";
            categoryDD.SelectedIndex = 0;
            txtprize.Text = "";
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("delete FoodTb1 where FoodName=@FoodName", con);
            cmd.Parameters.AddWithValue("@FoodName", txtfoodname.Text);
           

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            getvaluedata();

            Response.Write("<script>alert('record Delete successfully');</Script>");
            txtfoodname.Text = "";
            categoryDD.SelectedIndex = 0;
            txtprize.Text = "";
        }

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("select * from FoodTb1 where Category=@Category", con);
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@Category", categoryDD.SelectedValue);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            getvaluedata();
        }
    } 
}