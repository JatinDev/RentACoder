using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


using System.Configuration;

public partial class Feedback_page : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Feedback_page.aspx");
    }


    protected void Button_submit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into feedback values('" + txtName.Text + "','" + TextBox_emailid.Text + "','" + TextBox_comment.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Feedback_page.aspx");

    }
}