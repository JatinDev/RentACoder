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

public partial class Payment_org : System.Web.UI.Page
{

    //CONNECTION ESTABLISHMENT
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    DataTable dt = new DataTable();
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        //CHECH SESSION
        if (Session["OrgLogin"] == null)
        {
            Response.Redirect("Sign_uppage.aspx");
        }
        if (!IsPostBack)
        {
            //CALL METHODS ON PAGE LOAD
            BindProject();
            Panel1.Visible = false;
            Label4.Text = DateTime.Now.ToShortDateString();
        }

    }


    //DEFINE BIND METHODS
    void BindProject()
    {
        //FETCH DATA
        SqlDataAdapter daGetProject = new SqlDataAdapter("select p.projid,p.projname from Postproject as p,Bookingdetails as b where p.projid=b.projectid and  p.orgid=" + Session["OrgLogin"] + "", con);
        DataTable dtGetProj = new DataTable();
        daGetProject.Fill(dtGetProj);
        if (dtGetProj.Rows.Count > 0)
        {
            //IF DATA EXIST BIND PROJECT NAME INTO DROPDOWNLIST
            DropDownList_project.DataSource = dtGetProj;
            DropDownList_project.DataTextField = "projname";
            DropDownList_project.DataValueField = "projid";
            DropDownList_project.DataBind();
        }
    }
    protected void Button_GetDetails_Click(object sender, EventArgs e)
    {
        //FETCH DATA
        SqlDataAdapter daGetDetails = new SqlDataAdapter("select * from Postproject where projid=" + DropDownList_project.SelectedValue + "", con);
        DataTable dtGetDetails = new DataTable();
        daGetDetails.Fill(dtGetDetails);
        if (dtGetDetails.Rows.Count > 0)
        {
            //IF DATA EXIST THEN FILL DATA TO LABELS
            Panel1.Visible = true;
            Label1.Text = dtGetDetails.Rows[0]["budget"].ToString();
            Label2.Text = dtGetDetails.Rows[0]["duration"].ToString();
            Label3.Text = dtGetDetails.Rows[0]["skills"].ToString();
            //SUB QUERY
            SqlDataAdapter daGetDev = new SqlDataAdapter("select d.devid as devid,d.devname as devname,b.developerid,b.projectid from Developerreg as d, Bookingdetails as b where d.devid=b.developerid and b.projectid=" + DropDownList_project.SelectedValue + "", con);
            DataTable dtGetDev = new DataTable();
            daGetDev.Fill(dtGetDev);
            if (dtGetDev.Rows.Count > 0)
            {//IF DATA EXIST BIND DEVELOPER NAME
                DropDownList_developer.DataSource = dtGetDev;
                DropDownList_developer.DataTextField = "devname";
                DropDownList_developer.DataValueField = "devid";
                DropDownList_developer.DataBind();
            }

        }
    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {

        //INSERT COMMAND 
        string s = Session["OrgLogin"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Payment values('" + DropDownList_developer.SelectedValue + "','" + s + "','" + DropDownList_project.SelectedValue + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox_amt.Text + "','" + DateTime.Now + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}