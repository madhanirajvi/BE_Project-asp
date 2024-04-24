using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

public partial class _Default : System.Web.UI.Page 
{
    protected HtmlInputFile filMyFile;
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpPostedFile file = Request.Files["uploadedfile"];

        //check file was submitted
        if (file != null && file.ContentLength > 0)
        {
            string fname = Path.GetFileName(file.FileName);
            file.SaveAs(Server.MapPath("img/"+fname));
            Response.Write("Uploaded !!");
        }

    }


}
