using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;


public partial class Admin_contact_request : System.Web.UI.Page
{
    //Establish a connection by using web config file
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    SqlCommand cmd;
    DataTable dt =new DataTable();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();

        }
    }

    void bind()
    {
        //this get all data from contact us details
        da = new SqlDataAdapter("select * from contactus",con);
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

    }
}