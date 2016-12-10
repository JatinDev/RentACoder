using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;


public partial class Developer_Homepage : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd;
    DataTable dt = new DataTable();
    SqlDataAdapter da;
    
    protected void Page_Load(object sender, EventArgs e)
    {
       bind();
      
     }


    void bind()
    {
        da = new SqlDataAdapter("select Projid,projname,requirenmet,skills,projdescription,budget,duration,projdate from Postproject", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
    
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Apply")
        {

            string Projid = e.CommandArgument.ToString();
            string DeveloperID = Session["DevId"].ToString();

            SqlDataAdapter daCheck = new SqlDataAdapter("select * from Bookingdetails where projectid=" + Projid + " and developerid=" + DeveloperID + "", con);
            DataTable dtCheck = new DataTable();
            daCheck.Fill(dtCheck);
            if (dtCheck.Rows.Count > 0)
            {
                Response.Write("<script>alert('Sorry You have already applied for this project')</script>");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into Bookingdetails values(" + Projid + ",'" + DeveloperID + "','" + DateTime.Now + "',0)", con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('You have sucessfully applies for project. Now Wait for approval')</script>");
                con.Close();
            }

            if (e.CommandName == "Like")
            {
                int imaxlike;
                int ID = int.Parse(e.CommandArgument.ToString());
                SqlDataAdapter likesda = new SqlDataAdapter("select like from Postproject where projid=" + ID + "", con);
                DataTable likedt = new DataTable();
                likesda.Fill(likedt);
                if (likedt.Rows.Count > 0)
                {
                    string str;
                    str = likedt.Rows[0]["like"].ToString();
                    if (str == "")
                    {
                        imaxlike = 1;
                    }
                    else
                    {
                        imaxlike = int.Parse(likedt.Rows[0]["like"].ToString());
                        imaxlike++;

                    }


                }
                else
                {
                    imaxlike = 1;
                }

                con.Open();
                SqlCommand cmd = new SqlCommand("update Postproject values U_like=" + imaxlike + " where projid=" + ID + "", con);
                cmd.ExecuteNonQuery();
                con.Close();


            }
        }
    }
}