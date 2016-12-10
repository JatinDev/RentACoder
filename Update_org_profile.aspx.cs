using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


using System.Configuration;
using System.IO;


public partial class Update_org_profile : System.Web.UI.Page
{
    //connection establishment
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }

    }

    //define bind method
    public void bind()
    {
        con.Open();
        //fetch data from db
        da = new SqlDataAdapter("select emailid,contactno,orgaddress,country,website,Industry_type from Organizationreg where orgid=" + Session["OrgLogin"].ToString() + "", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //if dat exist then fill into textbox
            TextBox_email.Text = dt.Rows[0]["emailid"].ToString();
            TextBox_contact.Text = dt.Rows[0]["contactno"].ToString();
            TextBox_gender.Text = dt.Rows[0]["orgaddress"].ToString();
            TextBox_address.Text = dt.Rows[0]["country"].ToString();
            TextBox_country.Text = dt.Rows[0]["website"].ToString();
            TextBox_prevexpr.Text = dt.Rows[0]["Industry_type"].ToString();
        }
        con.Close();

    }


    
protected void  Button2_Click(object sender, EventArgs e)
    {
        //update query executed 
        con.Open();
        SqlCommand cmd2 = new SqlCommand("update Organizationreg set emailid='" + TextBox_email.Text + "',contactno='" + TextBox_contact.Text + "',orgaddress='" + TextBox_gender.Text + "',country='" + TextBox_address.Text + "',website='" + TextBox_country.Text + "',Industry_type='" + TextBox_prevexpr.Text + "',org='" + DateTime.Now + "'where orgid=" + Session["OrgLogin"].ToString() + "", con);
        cmd2.ExecuteNonQuery();
        con.Close();
    }
protected void Button1_Click(object sender, EventArgs e)
{
    //reset
    Response.Redirect("Update_org_profile.aspx");
}
}