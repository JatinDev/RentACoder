using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class Sign_uppage : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_reset_Click(object sender, EventArgs e)
    {
        TextBox_username.Text = "";
        TextBox_password.Text = "";
    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {

        
        if (DropDownList1.SelectedItem.Text == "SELECT USER")
        {
            Response.Write("<script>alert('SELECT USER')</script>");
        }


        if (DropDownList1.SelectedItem.Text == "DEVELOPER")
        {
            con.Open();
            cmd = new SqlCommand("select devid,devname,U_password from Developerreg where devname='" + TextBox_username.Text + "' and U_password='" + TextBox_password.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    Session["DevId"] = dr["devid"].ToString();
                    Session["DevName"] = dr["devname"].ToString();
                    Response.Redirect("Developer_Homepage.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('User Name or Password Incorrect')</script>");

            }
          
            con.Close();

        }
        else if (DropDownList1.SelectedItem.Text == "ORGANIZATION")
        {
            con.Open();
            cmd = new SqlCommand("select orgname,orgid from Organizationreg where orgname='" + TextBox_username.Text + "' and U_password='" + TextBox_password.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    string sOrgID = dr["orgid"].ToString();
                    string sOrgName = dr["orgname"].ToString();
                    Session["OrgLogin"] = sOrgID;
                    Session["orgname"] = sOrgName;
                    Response.Redirect("Organization_Homepage.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('User Name or Password Incorrect')</script>");

            }
            con.Close();
        }

        else if (DropDownList1.SelectedItem.Text == "ADMIN")
        {
            con.Open();
            cmd = new SqlCommand("select * from admin_login where name='" + TextBox_username.Text + "' and U_password='" + TextBox_password.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["Admin_name"] = dr["name"].ToString();
                    Response.Redirect("Admin_homepage.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('User Name or Password Incorrect')</script>");

            }
            con.Close();

        }


        con.Close();

    }



}