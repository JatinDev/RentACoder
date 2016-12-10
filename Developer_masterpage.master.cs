using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
public partial class Developer_masterpage : System.Web.UI.MasterPage
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd;
    DataTable dt = new DataTable();
    SqlDataAdapter da;


    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Session["DevName"].ToString();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con.Open();
        Session["DevLogin"] = null;
        Session["DevId"] = null;
        con.Close();
        Response.Write("<script>alert('Thanku For Visiting')</script>");
        Response.Redirect("Sign_uppage.aspx");
        
    }
}


