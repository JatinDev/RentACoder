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


public partial class View_applied_project : System.Web.UI.Page
{
    //Establish a connection
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataReader dr;
    DataTable dt = new DataTable();
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        //checking connection
        if (Session["OrgLogin"] == null)
        {
            Response.Redirect("Sign_uppage.aspx");
        }

        if (!IsPostBack)
        {

            BindProject();

        }
    }

    //define bind method
    void BindProject()
    {
     
      //fetch data from db
        SqlDataAdapter daGetProject = new SqlDataAdapter("select projid,projname from Postproject where orgid=" + Session["OrgLogin"] + "", con);
        DataTable dtGetProj=new DataTable();
        daGetProject.Fill(dtGetProj);
        if(dtGetProj.Rows.Count>0)
        {
            //if data exist
            DropDownList1.DataSource = dtGetProj;
            DropDownList1.DataTextField = "projname";
            DropDownList1.DataValueField = "projid";
            DropDownList1.DataBind();
        }
    }
    

    protected void Button_Search_Click(object sender, EventArgs e)
    {
        //connection open
        con.Open();
        string s = Session["OrgLogin"].ToString();

        //fetch data
        SqlDataAdapter dasearch = new SqlDataAdapter("select * from Bookingdetails where  projectid=" + DropDownList1.SelectedValue + "", con);
        DataTable dtsearch = new DataTable();
        dasearch.Fill(dtsearch);
        if (dtsearch.Rows.Count > 0)
        {
            //sub query if data exist
            SqlDataAdapter sda = new SqlDataAdapter("select p.projname,p.projid,p.budget,p.projdescription,b.bookingid,b.projectid,b.developerid,b.bookingdate,b.U_status from Bookingdetails as b,Postproject as p where b.projectid=p.projid and p.projid=" + DropDownList1.SelectedValue + "", con);
            DataTable sdt = new DataTable();
            sda.Fill(sdt);
            if (sdt.Rows.Count > 0)
            {
                //fill data in datalist
                GridView1.DataSource = sdt;
                GridView1.DataBind();
            }
        
        }
        
        con.Close();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //pass the dev id to developer profile page
        if (e.CommandName == "View")
        {
            int iDevID = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("View_developer_profile.aspx?DevID="+iDevID+"");
        }

        //if approve click
        if (e.CommandName == "Approve")
        {
            int iBookingID = int.Parse(e.CommandArgument.ToString());
            con.Open();
            //update command to db
            SqlCommand cmd1 = new SqlCommand("update Bookingdetails set U_status='Approved' where bookingid=" + iBookingID + "", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Project Approved requst has been sent')</script>");
        }
    }
}