using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=RAJVI-PC;Initial Catalog=TourismHelpDesk;Trusted_Connection=Yes;");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenField3.Value = "insert";
            setdata();
        }

    }
    void setdata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from [user]", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }



    protected void Button1_Click1(object sender, EventArgs e)
    {

        if (HiddenField3.Value.Equals("insert"))
        {
            String radio = "";
            for (int i = 0; i < RadioButtonList1.Items.Count; i++)
            {
                if (RadioButtonList1.Items[i].Selected)
                {
                    radio = RadioButtonList1.Items[i].Text;
                }
            }

            cn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [user](u_name,gender,mo_no,password,dob) values('" + TextBox1.Text + "','" + radio + "','" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", cn);
            cmd.ExecuteNonQuery();
            setdata();
            cn.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        }
        else
        {

            HiddenField3.Value = "insert";
          //  HiddenField2.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
            String radio = "";
            for (int i = 0; i < RadioButtonList1.Items.Count; i++)
            {
                if (RadioButtonList1.Items[i].Selected)
                {
                    radio = RadioButtonList1.Items[i].Text;
                }
            }

            
            cn.Open();
            SqlCommand cd = new SqlCommand("UPDATE [user] SET u_name='" + TextBox1.Text + "',gender='" + radio + "',mo_no='" + TextBox4.Text + "',password='" + TextBox2.Text + "',dob='" + TextBox3.Text + "'where  u_id='"+ HiddenField2.Value+"'", cn);
      
          
            cd.ExecuteNonQuery();
           setdata();
            cn.Close();

          
            Response.Redirect("./user1.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
   

    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
         {
        cn.Open();
        SqlCommand cmd = new SqlCommand("delete from [user] where u_id='" + GridView1.Rows[e.RowIndex].Cells[2].Text + "'", cn);
        cmd.ExecuteNonQuery();

        cn.Close();
        setdata();
        Response.Write("Deleted Successfull");
    }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        TextBox1.Text=GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;
        TextBox3.Text = GridView1.Rows[e.NewSelectedIndex].Cells[7].Text;
        TextBox4.Text = GridView1.Rows[e.NewSelectedIndex].Cells[5].Text;
        TextBox2.Text = GridView1.Rows[e.NewSelectedIndex].Cells[6].Text;

        if (GridView1.Rows[e.NewSelectedIndex].Cells[4].Text.Equals("Female"))
        {
            RadioButtonList1.Items[1].Selected = true;
        }
        else
        {
            RadioButtonList1.Items[0].Selected = true;
        }
        HiddenField3.Value = "update";
        HiddenField2.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
    }

    
}
  