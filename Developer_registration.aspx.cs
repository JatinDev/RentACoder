using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class Developer_registration : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label13.Text = DateTime.Now.ToString();
    }


    protected void Button_reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Developer_registration.aspx");
    }




    protected void Button_submit_Click(object sender, EventArgs e)
    {
        string sfilename = "";
        if (FileUpload_cv.HasFile)
        {
            string sextension = Path.GetExtension(FileUpload_cv.FileName);
            if (sextension== ".pdf" )
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
                sfilename="";
             }



        string photo = "";
        if (FileUpload_photo.HasFile)
        {
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
            photo= "";

        }


        con.Open();
        
        SqlCommand cmd = new SqlCommand("insert into Developerreg values('" + TextBox_name.Text + "','" + TextBox_passowrd.Text + "','" + TextBox_email_id.Text + "','" + TextBox_contact_no.Text + "','" + RadioButtonList_gender.SelectedItem.Text + "','" + TextBox_address.Text + "','" + DropDownList1.SelectedItem + "','" + sfilename + "','" + TextBox_expereince.Text + "','" + TextBox_certificate.Text + "','" + DateTime.Now + "','" + photo + "',0)", con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Developer_registration.aspx");
    }

}