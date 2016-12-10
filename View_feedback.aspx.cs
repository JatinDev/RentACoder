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

public partial class View_feedback : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
            {
                bind();

            }
        }
    }

    void bind()
    {
        da = new SqlDataAdapter("select * from feedback", con);
        DataTable dtfeedback = new DataTable();
        da.Fill(dtfeedback);

        if (dtfeedback.Rows.Count > 0)
        {

            GridView.DataSource = dtfeedback;
            GridView.DataBind();
        }
    }




}


