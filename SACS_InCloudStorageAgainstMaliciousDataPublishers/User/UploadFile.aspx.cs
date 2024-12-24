using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class User_UploadFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       string ext= Path.GetExtension(FileUpload1.FileName);
        string path = "~/Files/"+TextBox1.Text+ext;
        FileUpload1.SaveAs(MapPath(path));
        Session["file"]=path;
        Session["fname"] = TextBox1.Text + ext;
        Response.Redirect("AsssignUsers.aspx");

    }
}