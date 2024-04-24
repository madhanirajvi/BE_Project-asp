using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Citym : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=RAJVI-PC;Initial Catalog=TourismHelpDesk;Trusted_Connection=Yes;");
    protected void Page_Load(object sender, EventArgs e)
    {  if (!IsPostBack)
        {
            HiddenField1.Value = "insert";
            setdata();
            setcity();
           setstate();
        }

    }

   

    private void setcity()
    {
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from City", cn);

       
        DataTable dt1 = new DataTable();
      
        sda1.Fill(dt1);
       

        DropDownList1.DataSource = dt1;
       
        DropDownList1.DataValueField = "st_id";
        DropDownList1.DataBind(); 
    }

    void setdata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from City", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

  private void setstate()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from state", cn);

        DataTable dt = new DataTable();

        sda.Fill(dt);

        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "st_name";
        DropDownList1.DataValueField = "st_id";
        DropDownList1.DataBind();



    }





   


    protected void  Button1_Click1(object sender, EventArgs e)
    {
        if (HiddenField1.Value.Equals("insert"))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO City(ct_name,st_id) values('" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "')", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            setdata();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        }

        else
        {

            HiddenField1.Value = "insert";
            //  HiddenField2.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
         

            cn.Open();
            SqlCommand cd = new SqlCommand("UPDATE City SET ct_name='" + TextBox2.Text + "',st_id='" + DropDownList1.SelectedItem.Text + "'where ct_id='" + HiddenField2.Value + "' ", cn);


            cd.ExecuteNonQuery();
            setdata();
            cn.Close();


            Response.Redirect("./City1.aspx");
        }
}

  

   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
protected void  GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
    cn.Open();
    SqlCommand cmd = new SqlCommand("delete from City where ct_id='" + GridView1.Rows[e.RowIndex].Cells[2].Text + "'", cn);
    cmd.ExecuteNonQuery();

    cn.Close();
    setdata();
}
protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
{
    TextBox2.Text = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;

   DropDownList1.SelectedItem.Text = GridView1.Rows[e.NewSelectedIndex].Cells[4].Text;
 
  
    HiddenField1.Value = "update";
    HiddenField2.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
}
}


    