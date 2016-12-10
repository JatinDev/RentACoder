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


public partial class Admin_developer_details : System.Web.UI.Page
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

    public void bind()
    {
        //this get all data drom developer registration
        da = new SqlDataAdapter("select * from Developerreg", con);
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            GridView.DataSource = dt;
            GridView.DataBind();
        }
    }

    //make page index changing
    protected void GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView.PageIndex = e.NewPageIndex;
        bind();
    }

    protected void GridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView.EditIndex = e.NewEditIndex;
        bind();

    }

    //search detals by developer name
    protected void Button_search_Click(object sender, EventArgs e)
    {
        sda = new SqlDataAdapter("select * from Developerreg where devname='" + TextBox_name.Text + "'", con);
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