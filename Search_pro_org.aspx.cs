using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

public partial class Search_pro_org : System.Web.UI.Page
{
    //establish a connection
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();

    //checking session 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["OrgLogin"] != null)
        {
            Session["OrgLogin"].ToString();
        }
        //call bind method
        bind();
    }

    //define bind method
    public void bind()
    {
        string org = Session["OrgLogin"].ToString();
        //fetch data accordnig to session
        da = new SqlDataAdapter("select projid,projname,requirenmet,skills,projdescription,budget,duration,projdate from Postproject where orgid='" + org + "'", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //fill datalist 
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
    }

}