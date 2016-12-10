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

public partial class Upadate_dev_profile : System.Web.UI.Page
{
    //DEFINE CONNECTION BY WEB CONFID
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        //CHEACK SESSION
        if (Session["DevId"] == null)
        {
            Response.Redirect("Sign_uppage.aspx");

        }
        if (!IsPostBack)
        {
            bind();
        }
    }

    //DEFINE BIND METHOD
    public void bind()
    {
        con.Open();
        da = new SqlDataAdapter("select devname,certification,prevexper,U_password,emailid,contactno,gender,U_address,country,cv,dev_photo from Developerreg where devid=" + Session["DevId"].ToString() + "", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //IF DATA EXIST THEN FILL IN TEXTBOX
            TextBox_address.Text = dt.Rows[0]["U_address"].ToString();
            TextBox_certification.Text = dt.Rows[0]["certification"].ToString();
            TextBox_prevexpr.Text = dt.Rows[0]["prevexper"].ToString();
            TextBox_email.Text = dt.Rows[0]["emailid"].ToString();
            TextBox_contact.Text = dt.Rows[0]["contactno"].ToString();
            TextBox_gender.Text = dt.Rows[0]["gender"].ToString();
            TextBox_country.Text = dt.Rows[0]["country"].ToString();

            string sIMG = dt.Rows[0]["dev_photo"].ToString();
            if (sIMG != "")
            {
                //IF DATA EXIST IN DB THEN VISIBLE IS TRUE
                Button3.Visible = true;
                ViewState["images"] = dt.Rows[0]["dev_photo"].ToString();
            }
            else
            {
                //ELSE VISIBLE FALSE
                Button3.Visible = false;
            }

            string sCV = dt.Rows[0]["cv"].ToString();
            if (sCV != "")
            {
                //IF DATA EXIST IN DB THEN VISIBLE IS TRUE
                ViewState["CV"] = dt.Rows[0]["cv"].ToString();
            }
            else
            {
                //ELSE VISIBLE FALSE
                Button4.Visible = false;
            }

        }
        con.Close();

    }



    protected void Button2_Click(object sender, EventArgs e)
    {

        string sfilename = "";
        if (FileUpload_cv.HasFile)
        {
            string sextension = Path.GetExtension(FileUpload_cv.FileName);
            //CHEACH EXTENSION OF CV
            if (sextension == ".doc" || sextension == ".pdf")
            {
                FileUpload_cv.SaveAs(Request.PhysicalApplicationPath + "CV\\" + FileUpload_cv.FileName);
                sfilename = "~\\CV\\" + FileUpload_cv.FileName;
            }
            else
            {
                Response.Write("<script>alert('CV FILE CAN BE OLNY IN .doc or .pdf FORMAT')</script>");
                return;
            }
        }
        else
        {
            sfilename = "";
        }



        string photo = "";
        if (FileUpload_photo.HasFile)
        {
            //CHEACH EXTENSION OF PHOTO
            string sextension = Path.GetExtension(FileUpload_photo.FileName);
            if (sextension == ".bmp" || sextension == ".dib" || sextension == ".jpg" || sextension == ".jpeg" || sextension == ".tif" || sextension == ".png")
            {
                FileUpload_photo.SaveAs(Request.PhysicalApplicationPath + "Developer_photo\\" + FileUpload_photo.FileName);
                photo = "~\\Developer_photo\\" + FileUpload_photo.FileName;

            }
            else
            {
                Response.Write("<script>alert('PHOTO IS NOT IN SUPPORTABLE FORMAT')</script>");
                return;
            }
        }
        else
        {
            photo = "";

        }

        //IF ALL SET THEN UPDATE NEW DATA IN DB
        con.Open();
        SqlCommand cmd2 = new SqlCommand("update Developerreg set emailid='" + TextBox_email.Text + "',contactno='" + TextBox_contact.Text + "',gender='" + TextBox_gender.Text + "',U_address='" + TextBox_address.Text + "',country='" + TextBox_country.Text + "',cv='" + sfilename + "',prevexper='" + TextBox_prevexpr.Text + "',certification='" + TextBox_certification.Text + "',devdate='" + DateTime.Now + "',dev_photo='" + photo + "' where devid=" + Session["DevId"].ToString() + "", con);
        cmd2.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Update sucessfully')</script>");
        Response.Redirect("Developer_Homepage.aspx");


    }




    protected void Button3_Click(object sender, EventArgs e)
    {

        //TO DELETE PHOTO BY GIVING BLANK VALUE 
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update Developerreg set dev_photo='' where devid=" + Session["DevId"].ToString() + "", con);
        System.IO.File.Delete(Server.MapPath(ViewState["images"].ToString()));
        cmd1.ExecuteNonQuery();
        con.Close();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //TO DELETE CV BY GIVING BLANK VALUE 
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update Developerreg set cv='' where devid=" + Session["DevId"].ToString() + "", con);
        cmd1.ExecuteNonQuery();
        System.IO.File.Delete(Server.MapPath(ViewState["CV"].ToString()));
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //RESET
        Response.Redirect("Upadate_dev_profile.aspx");
    }
}