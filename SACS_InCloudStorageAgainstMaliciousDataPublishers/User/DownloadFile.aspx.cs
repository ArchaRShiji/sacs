using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_DownloadFile : System.Web.UI.Page
{
    dbconect db=new dbconect();
    RSAAlgorithm rsa = new RSAAlgorithm();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show(); 
        }
    }
    public void show()
    {
        ds = db.discont("select * from Tb_fileUploads where DataOwner='" + Session["user"] + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string fid = ((Label)GridView1.Rows[i].Cells[0].FindControl("Label1")).Text;
                string fname = db.extscalr("select fname from Tb_FileUploads where fid='" + fid + "'");
                ((Label)GridView1.Rows[i].Cells[0].FindControl("Label2")).Text = fname;
            }
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string fid = ((Label)GridView1.Rows[e.RowIndex].Cells[0].FindControl("Label1")).Text;
        string fname = ((Label)GridView1.Rows[e.RowIndex].Cells[0].FindControl("Label2")).Text;
         
        string[] sr = (Session["user"].ToString()).Split('@');
        Session["username"] = sr[0];
        string cypherkey = db.extscalr("select [Keycypher] from Tb_fileUploads where fid='" + fid + "' ");
        string accessp = db.extscalr("select AccesspolicyKey from Tb_fileUploads where fid='" + fid + "' ");



        string sanitized = db.extscalr("select [sanitizedDatta] from  [Tb_FilePermission] where fid='" + fid + "' and [Downer]='" + Session["user"].ToString() + "' and shareTo='" + Session["user"].ToString() + "'"); ;
        string[] user = Session["user"].ToString().Split('@');
        String pripath =Server.MapPath("~/RSA_Keys/" + user[0] + "/" + user[0] + ".pri");

        RSAAlgorithm rsa = new RSAAlgorithm();
        string cypher=rsa.DecryptFile(sanitized, pripath);
        string verifiedcypher = Server.MapPath("~/Files/Verified/"+fname);
        cryptography cry = new cryptography();
        string encpath1 = Server.MapPath("~/Files/efile/" + fname);
        cry.MultimediaDecrypt(verifiedcypher, encpath1, cypher);


       
       string ekey= cry.Decrypt(cypherkey, accessp);

       string decpath = "~/Files/decrypt/" + fname;
       string encpath = "~/Files/efile/" + fname;
       cry.MultimediaDecrypt(Server.MapPath(encpath), Server.MapPath(decpath), ekey);
       string downloadpath = Server.MapPath("~/Files/decrypt/" +fname);

       //download
       WebClient req = new WebClient();
       HttpResponse response = HttpContext.Current.Response;
       response.Clear();
       response.ClearContent();
       response.ClearHeaders();
       response.Buffer = true;
       response.AddHeader("Content-Disposition", "attachment;filename=" + Path.GetFileName(downloadpath));
       Response.WriteFile(downloadpath);

       Response.Flush();
        response.End();

    }
}