using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Organization_masterpage : System.Web.UI.MasterPage
{
    //ESTABLISH CONNECTION
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        //FILL SESSION VALUE TO LABEL
        Label1.Text = Session["orgname"].ToString();


    }

    //LINK BUTTON CLICK EVENT
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //DUMP ALL MEMORY
        Session["OrgLogin"] = null;
        Session["orgname"] = null;
        Response.Write("<script>alert('Thanku For Visiting')</script>");
        Response.Redirect("Sign_uppage.aspx");
    }
}
