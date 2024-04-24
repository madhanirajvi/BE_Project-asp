using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class HistoricalPlaces1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=RAJVI-PC;Initial Catalog=TourismHelpDesk;Trusted_Connection=Yes;");
    protected void Page_Load(object sender, EventArgs e)
    {
 if (!IsPostBack)
        {
     HiddenField1.Value = "insert";
            setdata();
            setstate();
            setcity();
        }

    }

    private void setcity()
    {
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from City", cn);

       
        DataTable dt1 = new DataTable();
      
        sda1.Fill(dt1);

        DropDownList1.Items.Insert(0,new ListItem("Please select city", "-1"));
    
        DropDownList2.DataSource = dt1;
        DropDownList2.DataTextField = "ct_name";
        DropDownList2.DataValueField = "ct_id";
        DropDownList2.DataBind();
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

 void setdata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from histrorical_places", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
       
        GridView1.DataSource = dt;
        GridView1.DataBind();
   
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
   
        if (HiddenField1.Value.Equals("insert")){

        String radio = "";
        for (int i = 0; i < RadioButtonList2.Items.Count; i++)
        {
            if (RadioButtonList2.Items[i].Selected)
            {
                radio = RadioButtonList2.Items[i].Text;
            }
        }
        cn.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO histrorical_places(h_name,st_id,ct_id,longitude,latitude,description,to_show) values('" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + radio + "')", cn);
        cmd.ExecuteNonQuery();
        setdata();
        cn.Close();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
    }

     else
        {

            HiddenField1.Value = "insert";
            //  HiddenField2.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
             String radio = "";
        for (int i = 0; i < RadioButtonList2.Items.Count; i++)
        {
            if (RadioButtonList2.Items[i].Selected)
            {
                radio = RadioButtonList2.Items[i].Text;
            }
        }

            cn.Open();

            SqlCommand cd = new SqlCommand("UPDATE histrorical_places SET h_name='" + TextBox2.Text + "',st_id='" + DropDownList1.SelectedItem.Text + "',ct_id='" + DropDownList2.SelectedItem.Text + "',longitude='"+TextBox1.Text+"',latitude='"+TextBox3.Text+"',description='"+TextBox4.Text+"',to_show='"+radio+"' where h_id='" + HiddenField2.Value + "' ", cn);


            cd.ExecuteNonQuery();
            setdata();
            cn.Close();


            Response.Redirect("./HistoricalPlaces1.aspx");

        }}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("delete from histrorical_places where h_id='" + GridView1.Rows[e.RowIndex].Cells[2].Text + "'", cn);
        cmd.ExecuteNonQuery();

        cn.Close();
        setdata();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

        protected void  GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
{
            {
    TextBox2.Text = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;
    DropDownList1.SelectedItem.Text = GridView1.Rows[e.NewSelectedIndex].Cells[4].Text;
    DropDownList2.SelectedItem.Text = GridView1.Rows[e.NewSelectedIndex].Cells[5].Text;
    TextBox1.Text = GridView1.Rows[e.NewSelectedIndex].Cells[6].Text;
    TextBox3.Text = GridView1.Rows[e.NewSelectedIndex].Cells[7].Text;
    TextBox4.Text = GridView1.Rows[e.NewSelectedIndex].Cells[8].Text;

   


    if (GridView1.Rows[e.NewSelectedIndex].Cells[9].Text.Equals("No"))
    {
        RadioButtonList2.Items[1].Selected = true;
    }
    else
    {
        RadioButtonList2.Items[0].Selected = true;
    }

   
    HiddenField1.Value = "update";
    HiddenField2.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
}

}
}


   
