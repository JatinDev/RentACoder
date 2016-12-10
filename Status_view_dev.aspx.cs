using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Status_view_dev : System.Web.UI.Page
{
    //DEFINING DATA CONNECTION
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    SqlDataAdapter sda = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        //call bind metod on page load
        bind();
    }

    public void bind()
    {

        //define bind method
        Session["DevId"].ToString();
        //get data from db
        da = new SqlDataAdapter("select p.projname,p.projdescription,p.budget,p.duration,b.bookingid,b.projectid,b.developerid,b.bookingdate,b.U_status from Postproject as p, Bookingdetails as b where b.developerid=" + Session["DevId"] + " and b.projectid=p.projid", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //if data exist
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}