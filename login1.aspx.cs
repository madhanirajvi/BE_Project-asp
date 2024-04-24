using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=RAJVI-PC;Initial Catalog=TourismHelpDesk;Trusted_Connection=Yes;");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
       
        SqlDataAdapter da = new SqlDataAdapter("select * from [user] where u_name='"+TextBox4.Text+"' and password='"+TextBox3.Text+"' and type='admin'", cn);
   
        DataTable dt = new DataTable();
        
 
        da.Fill(dt);



        if (dt.Rows.Count > 0)
        {

            Response.Redirect("./user1.aspx");

        }
          
            else
            { Response.Redirect("not correct"); }

        }
       
     

        

    }


