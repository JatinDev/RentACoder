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


public partial class Admin_payment : System.Web.UI.Page
{


    //Establish a connection by using web config file
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    SqlCommand cmd;
    DataTable dt = new DataTable();

    //calling bind method on page load event
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }

    //this method fetch data from payment details
    void bind()
    {
        da = new SqlDataAdapter("select * from Payment", con);
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

    }
}