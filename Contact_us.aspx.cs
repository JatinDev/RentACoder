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


public partial class Contact_us : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact_us.aspx");
    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into contactus values('" + TextBox_name.Text + "','" + TextBox_title.Text + "','" + TextBox_wtc.Text + "','" + TextBox_say.Text + "')", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("Contact_us.aspx");
        con.Close();
        Response.Write("<script>alert('Request Submitted Successfully')</script>");
    }
}