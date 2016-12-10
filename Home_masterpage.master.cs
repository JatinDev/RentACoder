using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

public partial class Home_masterpage : System.Web.UI.MasterPage
{


    //Establish a connection by using web config file
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();

    //call marq method on page load event
    protected void Page_Load(object sender, EventArgs e)
    {
         marq();
    }


    //defining marq method
    protected void marq()
    {
        //get data from post project detials
        SqlDataAdapter da = new SqlDataAdapter("select * from Postproject ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        // data exist in table
        if (dt.Rows.Count > 0)
        {

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //bind project name on marq
                string text = dt.Rows[i]["projname"].ToString();

                if (text != "")
                {
                    HyperLink lnk = new HyperLink();

                    lnk.ForeColor = System.Drawing.Color.Purple;
                    lnk.Font.Bold = true;
                    lnk.Font.Underline = false;

                    lnk.Font.Size = 10;
                    lnk.ID = text;

                    lnk.Attributes.Add("Target", "_blank");
                    lnk.Text = text + "  |  ";

                    Marquee.Controls.Add(lnk);
                }

            }

        }
    }

}


