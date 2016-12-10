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


public partial class Post_a_project : System.Web.UI.Page
{
    //ESTABLISH A CONNECTION USING WEB CONFIG FILE
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        //CHECK SESSION 
        if (Session["OrgLogin"] == null)
        {
            Response.Redirect("Sign_uppage.aspx");

        }

    }

    protected void Button_reset_Click(object sender, EventArgs e)
    {
        //RESPONSE ON THIS PAGE
        Response.Redirect("Post_a_project.aspx");
    }

    protected void Button_submit_Click(object sender, EventArgs e)
    {
        //INSERT VALUS TO DB
        con.Open();
        string ORGID = Session["OrgLogin"].ToString();
        cmd = new SqlCommand("insert into Postproject values('" + TextBox_Projectname.Text + "','" + TextBox_Requirement.Text + "','" + TextBox_Skills.Text + "','" + TextBox_Description.Text + "','" + TextBox_Budget.Text + "','" + TextBox_duration.Text + "','" + DateTime.Now + "'," + ORGID + ",0)", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Record Submitted Successfully')</script>");
        con.Close();
    }
}