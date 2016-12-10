using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

public partial class Admin_masterpage : System.Web.UI.MasterPage
{

    //Establish a connection by using web config file
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd;
    DataTable dt = new DataTable();
    SqlDataAdapter da;


    //show session name to label
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["Admin_name"].ToString();
    }


    //by clicking session name get null
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Admin_name"] = null;
        Response.Write("<script>alert('Thanku For Visiting')</script>");
        Response.Redirect("Sign_uppage.aspx");
    }
}
