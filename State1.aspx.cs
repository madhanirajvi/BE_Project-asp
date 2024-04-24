using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Statem : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=RAJVI-PC;Initial Catalog=TourismHelpDesk;Trusted_Connection=Yes;");
      protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenField1.Value = "insert";

            setdata();
        }

    }
    void setdata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from state", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (HiddenField1.Value.Equals("insert"))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO State(st_name) values('" + TextBox2.Text + "')", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            setdata();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        } else
        {

            HiddenField1.Value = "insert";
            //  HiddenField2.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
           cn.Open();

            SqlCommand cd = new SqlCommand("UPDATE state SET st_name='" + TextBox2.Text + "' where st_id='" + HiddenField2.Value + "' ", cn);


            cd.ExecuteNonQuery();
            setdata();
            cn.Close();


            Response.Redirect("./State1.aspx");

        }}
      

    protected void  GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
{
            TextBox2.Text = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;
  
   


   
    HiddenField1.Value = "update";
    HiddenField2.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
}

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cn.Open();
        SqlCommand cd = new SqlCommand("delete from State where st_id='" + GridView1.Rows[e.RowIndex].Cells[2].Text + "'", cn);
        cd.ExecuteNonQuery();
     
        cn.Close();
        setdata();
    
}
  
}
