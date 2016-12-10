using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

public partial class Search_org : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();



    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["OrgLogin"] != null)
        {
            Session["OrgLogin"].ToString();
        }

    }

    public void bind()
    {
        da = new SqlDataAdapter("select orgname,emailid,contactno,orgaddress,country,website,Industry_type from Organizationreg", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
    }


    protected void Button_search_Click(object sender, EventArgs e)
    {
        if (TextBox_name.Text.Length > 0 && TextBox_Industry_type.Text.Length == 0 && TextBox_country.Text.Length == 0 && TextBox_contactno.Text.Length == 0)
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select orgname,emailid,contactno,orgaddress,country,website,Industry_type from Organizationreg where orgname='" + TextBox_name.Text + "'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                DataList1.DataSource = dt1;
                DataList1.DataBind();

            }
        }

        if (TextBox_name.Text.Length == 0 && TextBox_Industry_type.Text.Length == 0 && TextBox_country.Text.Length == 0 && TextBox_contactno.Text.Length > 0)
        {

            SqlDataAdapter da2 = new SqlDataAdapter("select orgname,emailid,contactno,orgaddress,country,website,Industry_type from Organizationreg where contactno='" + TextBox_contactno.Text + "'", con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (dt2.Rows.Count > 0)
            {
                DataList1.DataSource = dt2;
                DataList1.DataBind();

            }
        }

        if (TextBox_name.Text.Length == 0 && TextBox_Industry_type.Text.Length == 0 && TextBox_country.Text.Length > 0 && TextBox_contactno.Text.Length == 0)
        {
            SqlDataAdapter da3 = new SqlDataAdapter("select orgname,emailid,contactno,orgaddress,country,website,Industry_type from Organizationreg where country='" + TextBox_country.Text + "'", con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            if (dt3.Rows.Count > 0)
            {
                DataList1.DataSource = dt3;
                DataList1.DataBind();

            }
        }

        if (TextBox_name.Text.Length == 0 && TextBox_Industry_type.Text.Length > 0 && TextBox_country.Text.Length == 0 && TextBox_contactno.Text.Length == 0)
        {
            SqlDataAdapter da4 = new SqlDataAdapter("select orgname,emailid,contactno,orgaddress,country,website,Industry_type from Organizationreg where Industry_type='" + TextBox_Industry_type.Text + "'", con);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);
            if (dt4.Rows.Count > 0)
            {
                DataList1.DataSource = dt4;
                DataList1.DataBind();

            }
        }
    }


    protected void Button_getall_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da5 = new SqlDataAdapter("select* from Postproject", con);
        DataTable dt5 = new DataTable();
        da5.Fill(dt5);
        if (dt5.Rows.Count > 0)
        {
            bind();

        }
    }

}