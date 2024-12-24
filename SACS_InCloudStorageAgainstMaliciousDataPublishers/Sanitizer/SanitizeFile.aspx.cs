using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Sanitizer_SanitizeFile : System.Web.UI.Page
{
    dbconect db = new dbconect();
    RSAAlgorithm rsa = new RSAAlgorithm();
    System.Data.DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show(); 
        }
    }
    public void show()
    {
        ds.Clear();
        ds = db.discont("select * from Tb_FileUploads where fid in (select fid from Tb_FilePermission where  [sanitizedDatta] IS NULL)");
        if (ds.Tables[0].Rows.Count>0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string wmail = ((Label)GridView1.Rows[i].Cells[1].FindControl("Label1")).Text;
                string name = db.extscalr("select Name from Tb_UserRegister where email='" + wmail + "'");
                ((Label)GridView1.Rows[i].Cells[1].FindControl("Label2")).Text = name;

                
            }

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string dataowner = ((Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("Label1")).Text;
        string fname = GridView1.Rows[e.RowIndex].Cells[0].Text;
        string fid = db.extscalr("select fid from Tb_FileUploads where fname='" + fname + "'");
        string keyCypher = db.extscalr("select keycypher from Tb_FileUploads where fname='" + fname + "' and DataOwner='"+dataowner+"'");
        string AccessploicyKey = db.extscalr("select [AccesspolicyKey] from Tb_FileUploads where fname='" + fname + "' and DataOwner='" + dataowner + "'");
        ds.Clear();

        string[] owner = dataowner.Split('@');

        //1.selcting access permission listfor      
        ds = db.discont("select shareTo from Tb_filePermission where fid='" + fid + "' and DOwner='" + dataowner + "'");
        List<string> permitteUser = new List<string>();
        List<string> permittedEmails = new List<string>();

        if (ds.Tables[0].Rows.Count>0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                permittedEmails.Add(ds.Tables[0].Rows[i]["shareTo"].ToString());
                string[] ar=(ds.Tables[0].Rows[i]["shareTo"].ToString()).Split('@');
                permitteUser.Add(ar[0]);
            }
           
            
        }
        
        
        //Accesploicy checking

       
        int st=0;
	    foreach (string item in permitteUser)
	    {
		    if (!AccessploicyKey.Contains(item))
	            {
                st=1;
		        ClientScript.RegisterStartupScript(GetType(),"","<script>alert('Sorry!!  AccessPolicy Checking Failed') </script>");
	            } 
	    }

        //Sanitization of data
                if (st==0)
	            {
                 string epath = Server.MapPath("~/Files/efile/" +fname);
                 string Verifiedpath = Server.MapPath("~/Files/Verified/" + fname);
                 string pwd=db.MakePwd(5);
                 cryptography cry = new cryptography();
                 cry.MultimediaEncrypt(epath, Verifiedpath, pwd);


            for (int i = 0; i < permitteUser.Count; i++)
                    {
                       //string epath = "~/Files/efile/" + Session["fname"];

                       String pubpath = "~/RSA_Keys/" + permitteUser[i] + "/" + permitteUser[i] + ".pbl";
                       string Sanitizedcypher= rsa.EncryptFile(pwd,Server.MapPath(pubpath));
                       db.extnon("update Tb_FilePermission set sanitizedDatta='" + Sanitizedcypher + "' where shareTo='" + permittedEmails[i] + "' and fid='"+fid+"'");

                    }
                    show();
                    Response.Redirect("SanitizeFile.aspx");
             }
        
    }
}