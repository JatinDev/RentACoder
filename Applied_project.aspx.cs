using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

public partial class Applied_project : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DevId"] != null)
        {
            bind();
        }

        else
        {
            Response.Redirect("Sign_uppage.aspx");
        }


    }

    void bind()
    {

        string s = Session["DevId"].ToString();
        da = new SqlDataAdapter("select p.projid,p.projname,p.projdescription,p.budget,p.duration,p.projdate from Postproject as p,Bookingdetails as b where b.projectid=p.projid and b.developerid='" + s + "'", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}