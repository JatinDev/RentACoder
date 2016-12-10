using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class View_developer_profile : System.Web.UI.Page
{

    //CONNECTION ESTABLISHMENT
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataReader dr;
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {

        //get id which pass by previous page
        if (Request.QueryString.Count > 0)
        {
            string sDevID = Request.QueryString["DevID"].ToString();
            //checking developer existment
            con.Open();
            cmd = new SqlCommand("Select * from Developerreg where DevID=" + sDevID + " ", con);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                //if data exist then fill into lables
                while (dr.Read())
                {

                    Label_Name.Text = dr["devname"].ToString();
                    Label_Email_ID.Text = dr["emailid"].ToString();
                    Label_Contact_NO.Text = dr["contactno"].ToString();
                    Label_Gender.Text = dr["gender"].ToString();
                    Label_Address.Text = dr["U_address"].ToString();
                    Label_Previous_Experience.Text = dr["prevexper"].ToString();
                    Label_Previous_Experience.Text = dr["certification"].ToString();
                    //if cv doesnt exist then show cv link button
                    if (dr["cv"].ToString() != "")
                    {
                        ViewState["CV"] = dr["cv"].ToString();
                        LinkButton_cv.Visible = true;
                    }
                    else
                    {
                        //if cv doesnt exist then hide cv link button
                        LinkButton_cv.Visible = false;
                    }

                }
            }
            con.Close();
        }

    }


    protected void LinkButton_cv_Click(object sender, EventArgs e)
    {
        //code to download file of cv
        LinkButton lnkbtn = sender as LinkButton;
        string filePath = ViewState["CV"].ToString();
        Response.ContentType = ".pdf";
        Response.AddHeader("Content-Disposition", "attachment;filename=\"" + "~\\CV\\" + "\"");
        Response.TransmitFile(Server.MapPath(filePath));
        Response.End();

    }
}