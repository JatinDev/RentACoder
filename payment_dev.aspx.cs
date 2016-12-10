using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


using System.Configuration;
public partial class payment_dev : System.Web.UI.Page
{
    //DEFINING DATA CONNECTION
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProject();

        }
    }

    //define bind method
    void BindProject()
    {
        string s1= Session["DevId"].ToString();
        SqlDataAdapter sda = new SqlDataAdapter("select * from Payment as p,Organizationreg as o where o.orgid=p.org_id and developer_id= " + s1 + "", con);
        DataTable sdt= new DataTable();
        sda.Fill(sdt);
        DataList1.DataSource=sdt;
        DataList1.DataBind();
    }


}