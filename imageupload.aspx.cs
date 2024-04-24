using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=RAJVI-PC;Initial Catalog=TourismHelpDesk;Trusted_Connection=Yes;");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
       
            
            setcity();
        }

    }

    private void setcity()
    {
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from histrorical_places ", cn);


        DataTable dt1 = new DataTable();

        sda1.Fill(dt1);

       

        DropDownList1.DataSource = dt1;
        DropDownList1.DataTextField = "h_name";
        DropDownList1.DataValueField = "h_id";
        DropDownList1.DataBind();
    }
   
    protected void Upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/") + fileName);
          
        }

         cn.Open();
         SqlCommand cmd = new SqlCommand("INSERT INTO histrorical_images(h_id,image,date,time,description,updated_by) values('" + DropDownList1.SelectedItem.Text + "','" + FileUpload1.FileName + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','" + TextBox1.Text + "','" + "Admin" + "')", cn);
        cmd.ExecuteNonQuery();
       
        cn.Close();

        Response.Write("Added Successfully");


            
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}