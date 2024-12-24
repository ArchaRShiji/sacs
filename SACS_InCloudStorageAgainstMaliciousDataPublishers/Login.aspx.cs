                                                                                                    using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ds.Clear();
        ds = db.discont("select * from Tb_Login where Username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {

            string type = ds.Tables[0].Rows[0]["type"].ToString();
            string status = ds.Tables[0].Rows[0]["status"].ToString();

            if (status == "0")
            {
                if (type == "Authority")
                {

                    Response.Redirect("~/Authority/Index.aspx");
                }
                else if (type == "User")
                {
                    Session["user"] = TextBox1.Text;

                    Response.Redirect("~/User/Home.aspx");
                }
                else if (type == "Sanitizer")
                {
                    Session["user"] = TextBox1.Text;
 
                    Response.Redirect("~/Sanitizer/SanitizeFile.aspx");
                }
                else
                {
                   ClientScript.RegisterStartupScript(GetType(),"", "<script Language=JavaScript>alert('Invalid user ')</Script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(),"", "<script Language=JavaScript>alert('Sorry!! You are Temporary Blocked')</Script>"); ;
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(),"", "<script Language=JavaScript>alert('Invalid username or password')</Script>");
        }

    }
}