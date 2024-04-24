using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=RAJVI-PC;Initial Catalog=TourismHelpDesk;Trusted_Connection=Yes;");
    protected void Page_Load(object sender, EventArgs e)
    {
        setdata();
    }


    void setdata()
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from feedback", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();

    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO feedback(data,posted_by) values('" + TextBox1.Text + "','" + Label1.Text + "')", cn);
        cmd.ExecuteNonQuery();
        setdata();
        cn.Close();

        Response.Write("Done");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("delete from feedback where f_id='" + GridView1.Rows[e.RowIndex].Cells[1].Text + "'", cn);
        cmd.ExecuteNonQuery();

        cn.Close();
        setdata();
    }
}
 