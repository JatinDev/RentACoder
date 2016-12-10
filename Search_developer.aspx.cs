using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Search_developer : System.Web.UI.Page
{


    //Establish a connection by using web config file
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //define bind method
    public void bind()
    {
        da = new SqlDataAdapter("select U_like,devid, dev_photo,devname,emailid,contactno,U_address,country,prevexper,certification from Developerreg", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
    }

    //fetch all data from post project table
    protected void Button_getall_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da0 = new SqlDataAdapter("select* from Postproject", con);
        DataTable dt0 = new DataTable();
        da0.Fill(dt0);
        if (dt0.Rows.Count > 0)
        {
            bind();

        }
    }

    //start search click button event
    protected void Button_search_Click(object sender, EventArgs e)
    {
        if (TextBox_name.Text.Length > 0 && TextBox_expr.Text.Length == 0 && TextBox_country.Text.Length == 0 && TextBox_contactno.Text.Length == 0)
        {   //search all data by developer name
            SqlDataAdapter da1 = new SqlDataAdapter("select devid,dev_photo,devname,emailid,contactno,U_address,country,prevexper,certification,U_like from Developerreg where devname='" + TextBox_name.Text + "'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                DataList1.DataSource = dt1;
                DataList1.DataBind();

            }
        }

        if (TextBox_name.Text.Length == 0 && TextBox_expr.Text.Length == 0 && TextBox_country.Text.Length == 0 && TextBox_contactno.Text.Length > 0)
        {
            //search all data by developer contact no.
            SqlDataAdapter da2 = new SqlDataAdapter("select devid,dev_photo,devname,emailid,contactno,U_address,country,prevexper,certification,U_like from Developerreg where contactno='" + TextBox_contactno.Text + "'", con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt);
            if (dt2.Rows.Count > 0)
            {
                DataList1.DataSource = dt2;
                DataList1.DataBind();

            }
        }


        if (TextBox_name.Text.Length == 0 && TextBox_expr.Text.Length == 0 && TextBox_country.Text.Length > 0 && TextBox_contactno.Text.Length == 0)
        {
            //search all data by developer country
            SqlDataAdapter da3 = new SqlDataAdapter("select devid,dev_photo,devname,emailid,contactno,U_address,country,prevexper,certification,U_like from Developerreg where country='" + TextBox_country.Text + "'", con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            if (dt3.Rows.Count > 0)
            {
                DataList1.DataSource = dt3;
                DataList1.DataBind();
            }
        }



        if (TextBox_name.Text.Length == 0 && TextBox_expr.Text.Length > 0 && TextBox_country.Text.Length == 0 && TextBox_contactno.Text.Length == 0)
        {//search all data by developer experience
            SqlDataAdapter da4 = new SqlDataAdapter("select devid,dev_photo,devname,emailid,contactno,U_address,country,prevexper,certification,U_like from Developerreg where prevexper='" + TextBox_expr.Text + "'", con);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);
            if (dt4.Rows.Count > 0)
            {
                DataList1.DataSource = dt4;
                DataList1.DataBind();

            }
        }
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //check session while click on like button
        if (Session["DevLogin"] == null)
        {
            Response.Redirect("Sign_uppage.aspx");
        }

        else
        {
            //what happen while click on like button
            if (e.CommandName == "Like")
            {
                int imaxlike;
                int ID = int.Parse(e.CommandArgument.ToString());
                SqlDataAdapter likesda = new SqlDataAdapter("select devid,U_like from Developerreg where devid=" + ID + "", con);
                DataTable likedt = new DataTable();
                likesda.Fill(likedt);
                if (likedt.Rows.Count > 0)
                {
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
                else
                {
                    imaxlike = 1;
                }

                //insert likes in developer table
                con.Open();
                SqlCommand cmd = new SqlCommand("update Developerreg set U_like=" + imaxlike + " where devid=" + ID + "", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}