using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_AsssignUsers : System.Web.UI.Page
{
    dbconect db = new dbconect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show(); 
        }
    }
    public void show()
    {
        System.Data.DataSet ds = new DataSet();
        ds = db.discont("select * from Tb_UserRegister where email!='" + Session["user"] + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        List<string> permittedUser = new List<string>();
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            if (((CheckBox)DataList1.Items[i].FindControl("CheckBox1")).Checked)
            
            {
                string mail = ((Label)DataList1.Items[i].FindControl("Label2")).Text;
                permittedUser.Add(mail);
            }
        }
        permittedUser.Add(Session["user"].ToString()) ;

        string KeyGenerator = "";
        foreach (var item in permittedUser)
        {
            string[] Ar = item.Split('@');
            KeyGenerator = KeyGenerator + Ar[0];
        }

        string[] owner = Session["user"].ToString().Split('@');
        KeyGenerator = KeyGenerator + owner[0];

        //Encrption of file
        string epath = "~/Files/efile/" + Session["fname"] ;
        cryptography cry = new cryptography();
        //First encryption of key
        string ekey = db.MakePwd(5);
        cry.MultimediaEncrypt(Server.MapPath(Session["file"].ToString()), Server.MapPath(epath), ekey);

        //Encrypting the ekey using accesspolicy
       string key_cypher= cry.encrypt(ekey, KeyGenerator);  

        //Data storage to database

        db.extnon("insert into Tb_fileUploads values('" + Session["fname"] + "','"+Session["user"]+"','"+DateTime.Now.ToString("dd-MM-yyyy")+"','"+KeyGenerator+"','"+key_cypher+"')");
        string f = db.extscalr("select max(fid) from Tb_fileUploads ");
        foreach (var item in permittedUser)
        {
            db.extnon("insert into [Tb_FilePermission] ([fid] ,[Downer],[shareTo],[rdate])  values('"+f+"','"+Session["user"]+"','"+item+"','"+DateTime.Now.ToString("dd-MM-yyyy")+"')");
        }
        Response.Redirect("UploadFile.aspx");
    }
}