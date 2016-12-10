using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

public partial class Serach_pro_dev : System.Web.UI.Page
{
    //DEFINING DATA CONNECTION
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //DEFINE BIND METHOD
    public void bind()
    {
        da = new SqlDataAdapter("select * from Postproject", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
    }

    protected void Button_search_Click(object sender, EventArgs e)
    {
        if (TextBox_name.Text.Length > 0 && TextBox_BUDGET.Text.Length == 0 && TextBox_duration.Text.Length == 0 && TextBox_skills.Text.Length == 0)
        {
            //GET DATA FROM DB ACCORDING TO NAME
            SqlDataAdapter da1 = new SqlDataAdapter("select projid,projname,requirenmet,skills,projdescription,budget,duration,projdate from Postproject where projname='" + TextBox_name.Text + "'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                DataList1.DataSource = dt1;
                DataList1.DataBind();

            }
        }


        if (TextBox_name.Text.Length == 0 && TextBox_BUDGET.Text.Length == 0 && TextBox_duration.Text.Length == 0 && TextBox_skills.Text.Length > 0)
        {
            //GET DATA FROM DB ACCORDING TO SKILLS
            SqlDataAdapter da2 = new SqlDataAdapter("select projid,projname,requirenmet,skills,projdescription,budget,duration,projdate from Postproject where skills='" + TextBox_skills.Text + "'", con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (dt2.Rows.Count > 0)
            {
                DataList1.DataSource = dt2;
                DataList1.DataBind();

            }
        }

        if (TextBox_name.Text.Length == 0 && TextBox_BUDGET.Text.Length > 0 && TextBox_duration.Text.Length == 0 && TextBox_skills.Text.Length == 0)
        {
            //GET DATA FROM DB ACCORDING TO BUDGET
            SqlDataAdapter da3 = new SqlDataAdapter("select projid,projname,requirenmet,skills,projdescription,budget,duration,projdate from Postproject where budget='" + TextBox_BUDGET.Text + "'", con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            if (dt3.Rows.Count > 0)
            {
                DataList1.DataSource = dt3;
                DataList1.DataBind();
            }
        }



        if (TextBox_name.Text.Length == 0 && TextBox_BUDGET.Text.Length == 0 && TextBox_duration.Text.Length > 0 && TextBox_skills.Text.Length == 0)
        {
            //GET DATA FROM DB ACCORDING TO DURATION
            SqlDataAdapter da5 = new SqlDataAdapter("select projid,projname,requirenmet,skills,projdescription,budget,duration,projdate from Postproject where duration='" + TextBox_duration.Text + "'", con);
            DataTable dt5 = new DataTable();
            da5.Fill(dt5);
            if (dt5.Rows.Count > 0)
            {
                DataList1.DataSource = dt5;
                DataList1.DataBind();

            }
        }
    }

    //CALL BIND METHOD ON GET ALL BUTTON
    protected void Button_getall_Click(object sender, EventArgs e)
    {
        bind();
    }

    //if session is null
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["DevId"] = null;
        Response.Write("<script>alert('You Should Be SingUp To Apply')</script>");
        Response.Redirect("Sign_uppage.aspx");
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["DevId"] == null)
        {
            Response.Redirect("Sign_uppage.aspx");
        }

        else
        {
            //if user click on apply button
            if (e.CommandName == "Apply")
            {

                string Projid = e.CommandArgument.ToString();
                string DeveloperID = Session["DevId"].ToString();

                //check if user is already applied on particular project or not
                SqlDataAdapter daCheck = new SqlDataAdapter("select * from Bookingdetails where projectid=" + Projid + " and developerid=" + DeveloperID + "", con);
                DataTable dtCheck = new DataTable();
                daCheck.Fill(dtCheck);
                if (dtCheck.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Sorry You have already applied for this project')</script>");
                }
                else
                {
                    //if user first time apply on project
                    SqlCommand cmd = new SqlCommand("insert into Bookingdetails(projectid,developerid,bookingdate) values(" + Projid + ",'" + DeveloperID + "','" + DateTime.Now + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('You have sucessfully applies for project. Now Wait for approval')</script>");
                    con.Close();
                }
            }

            //if click on like button
            if (e.CommandName == "Like")
            {
                int imaxlike;
                int ID = int.Parse(e.CommandArgument.ToString());
                SqlDataAdapter likesda = new SqlDataAdapter("select U_like from Postproject where projid=" + ID + "", con);
                DataTable likedt = new DataTable();
                likesda.Fill(likedt);
                if (likedt.Rows.Count > 0)
                {
                    //if likes already exist on db then increment
                    string str;
                    str = likedt.Rows[0]["U_like"].ToString();
                    if (str == "")
                    {
                        imaxlike = 1;
                    }
                    else
                    {
                        imaxlike = int.Parse(likedt.Rows[0]["U_like"].ToString());
                        imaxlike++;

                    }


                }

                    //if like is null
                else
                {
                    imaxlike = 1;
                }

                //insert like on db
                con.Open();
                SqlCommand cmd = new SqlCommand("update Postproject set U_like=" + imaxlike + " where projid=" + ID + "", con);
                cmd.ExecuteNonQuery();
                con.Close();


            }
        }
    }
}



