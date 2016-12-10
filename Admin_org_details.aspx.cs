using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class Admin_org_details : System.Web.UI.Page
{

    //Establish a connection by using web config file
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    SqlDataAdapter sda;
    SqlCommand cmd;
    DataTable dt = new DataTable();
    DataTable sdt = new DataTable();


    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //this get all data from organization details
    public void bind()
    {
        da = new SqlDataAdapter("select * from Organizationreg", con);
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            GridView.DataSource = dt;
            GridView.DataBind();
        }
    }

    protected void GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView.PageIndex = e.NewPageIndex;
        bind();
    }


    //get all data by search query then fill in datatable
    protected void Button_search_Click(object sender, EventArgs e)
    {
        sda = new SqlDataAdapter("select * from Organizationreg where orgname='" + TextBox_name.Text + "'", con);
        sda.Fill(sdt);

        if (sdt.Rows.Count > 0)
        {

            GridView.DataSource = sdt;
            GridView.DataBind();
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView.PageIndex = e.NewPageIndex;
        bind();

    }

    protected void Button_getall_Click(object sender, EventArgs e)
    {
        bind();
    }
}