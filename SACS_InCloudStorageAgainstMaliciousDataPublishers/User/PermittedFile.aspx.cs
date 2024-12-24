using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;

public partial class User_PermittedFile : System.Web.UI.Page
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
        ds = db.discont("select * from Tb_filePermission where shareTo='" + Session["user"] + "' and [sanitizedDatta] IS NOT Null");
        if (ds.Tables[0].Rows.Count>0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string fid = ((Label)GridView1.Rows[i].Cells[0].FindControl("Label1")).Text;
                string fname = db.extscalr("select fname from Tb_FileUploads where fid='" + fid + "'");
                ((Label)GridView1.Rows[i].Cells[0].FindControl("Label2")).Text = fname;
                string downer = ((Label)GridView1.Rows[i].Cells[1].FindControl("Label3")).Text;
                string dname = db.extscalr("select Name from Tb_UserRegister where email='" + downer + "'");
                ((Label)GridView1.Rows[i].Cells[1].FindControl("Label4")).Text = dname;
  
            }
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string fid = ((Label)GridView1.Rows[e.RowIndex].Cells[0].FindControl("Label1")).Text;
        Session["fid"] = fid;
        Session["fname"] = ((Label)GridView1.Rows[e.RowIndex].Cells[0].FindControl("Label2")).Text;
        string accesspolicykey = db.extscalr("select [AccesspolicyKey] from Tb_fileUploads where fid='" + fid + "'");
        string[] sr = (Session["user"].ToString()).Split('@');
        Session["username"] = sr[0];
        //Accesspolicy checking
        if (accesspolicykey.Contains(sr[0]))
        {
            // Verifying with private keys

            Panel1.Visible = false;
            Panel2.Visible = true;

        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(),"","<script> alert('Access Policy Attribute Mismatch')</script>");
        }

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        string[] ar = Session["user"].ToString().Split('@');
        string privatepath = "~/RSA_Keys/" + ar[0] + "/" + ar[0] + ".pri";
        string data = File.ReadAllText(Server.MapPath(privatepath));
        string p = "~/" + FileUpload1.FileName;
        FileUpload1.SaveAs(MapPath(p));
        string d = File.ReadAllText(Server.MapPath(p));
        if (d == data)
        {
            string sanitizedDatta = db.extscalr("select [sanitizedDatta] from Tb_FilePermission where fid='" + Session["fid"] + "' and shareTo='" + Session["user"] + "'");
            string cypherkey = db.extscalr("select [Keycypher] from Tb_fileUploads where fid='" + Session["fid"] + "' ");
            string veri_cypher = rsa.DecryptFile(sanitizedDatta, Server.MapPath(privatepath));
            if (veri_cypher == cypherkey)
            {
                string accesspolicykey = db.extscalr("select [AccesspolicyKey] from Tb_fileUploads where fid='" + Session["fid"] + "' ");
                cryptography ry = new cryptography();
                string ekey = ry.Decrypt(cypherkey, accesspolicykey);
                string decpath = "~/Files/decrypt/" + Session["fname"];
                string encpath = "~/Files/efile/" + Session["fname"];
                string n = Session["fname"].ToString();


                ry.MultimediaDecrypt(Server.MapPath(encpath), Server.MapPath(decpath), ekey);
                string downloadpath = Server.MapPath("~/Files/decrypt/" + n);

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

                //File.Delete(Server.MapPath(decpath));
                //File.Delete(Server.MapPath(downloadpath));
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script> alert('Invalid Privatekey...!  ')</script>");
            }




        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "", "<script> alert('Invalid Private Key...!  ')</script>");

        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string[] ar = Session["user"].ToString().Split('@');
        string privatepath = "~/RSA_Keys/" + ar[0] + "/" + ar[0] + ".pri";
        string privatepathSTRING = Server.MapPath("~/RSA_Keys/" + ar[0] + "/" + ar[0] + ".pri");
        string data = File.ReadAllText(Server.MapPath(privatepath));
        string p = "~/" + FileUpload1.FileName;
        FileUpload1.SaveAs(MapPath(p));
        string d = File.ReadAllText(Server.MapPath(p));
        if (d == data)
        {
            string sanitizedDatta = db.extscalr("select [sanitizedDatta] from Tb_FilePermission where fid='" + Session["fid"] + "' and shareTo='" + Session["user"] + "'");

            string key=rsa.DecryptFile(sanitizedDatta, privatepathSTRING);

            string verifiedcypher = Server.MapPath("~/Files/Verified/" + Session["fname"].ToString() );
            cryptography cry = new cryptography();
            string encpath1 = Server.MapPath("~/Files/efile/" + Session["fname"].ToString());
            cry.MultimediaDecrypt(verifiedcypher, encpath1, key);



            string cypherkey = db.extscalr("select [Keycypher] from Tb_fileUploads where fid='" + Session["fid"] + "' ");
            //string veri_cypher = rsa.DecryptFile(sanitizedDatta, Server.MapPath(privatepath));
            //if (veri_cypher == cypherkey)
            //{
                string accesspolicykey = db.extscalr("select [AccesspolicyKey] from Tb_fileUploads where fid='" + Session["fid"] + "' ");
                cryptography ry = new cryptography();
                string ekey = ry.Decrypt(cypherkey, accesspolicykey);
                string decpath = "~/Files/decrypt/" + Session["fname"];
                string encpath = "~/Files/efile/" + Session["fname"];
                string n = Session["fname"].ToString();


                ry.MultimediaDecrypt(Server.MapPath(encpath), Server.MapPath(decpath), ekey);
                string downloadpath = Server.MapPath("~/Files/decrypt/" + n);

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

                //File.Delete(Server.MapPath(decpath));
                //File.Delete(Server.MapPath(downloadpath));
            //}
            //else
            //{
            //    ClientScript.RegisterStartupScript(GetType(), "", "<script> alert('Invalid Privatekey...!  ')</script>");
            //}




        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "", "<script> alert('Invalid Private Key...!  ')</script>");

        }

        //}
        //else
        //{
        //    ClientScript.RegisterStartupScript(GetType(), "", "<script> alert('Invalid Private Key...!  ')</script>");

        //}
    }
}