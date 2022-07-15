using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ICCS_Canteen
{
    public partial class view_feedback : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                
                string selectSQL = "SELECT * from feedback";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(selectSQL, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "feedback");

                grdFeedback.DataSource = ds;
                grdFeedback.DataBind();
            }
        }
    }
}