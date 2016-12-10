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

public partial class Organization_registration : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);//to establish Connection
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        Label10.Text = DateTime.Now.ToString();
    }





    protected void Button_reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Organization_registration.aspx");

    }




    protected void Button_submit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into Organizationreg values('" + TextBox_orgname.Text + "','" + TextBox_passowrd.Text + "','" + TextBox_email_id.Text + "','" + TextBox_contact_no.Text + "','" + TextBox_address.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox_website.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DateTime.Now + "',0)", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("Organization_registration.aspx");
        con.Close();

    }
}