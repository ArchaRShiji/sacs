using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MailServiceGateway;
public partial class Authority_Index : System.Web.UI.Page
{
    dbconect db = new dbconect();
    DataSet ds = new DataSet();

    RSAAlgorithm rsa = new RSAAlgorithm();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
        }
    }



    public void show()
    {
        ds = db.discont("select * from [Tb_UserRegister]");
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            string username = ((Label)DataList1.Items[i].FindControl("Label1")).Text;
            string st = db.extscalr("select status from [Tb_Login] where [Username] ='" + username + "'");
            if (st == "1")
            {
                ((LinkButton)DataList1.Items[i].FindControl("LinkButton1")).Visible = true;
                ((LinkButton)DataList1.Items[i].FindControl("LinkButton2")).Visible = false;
            }
            else
            {
                ((LinkButton)DataList1.Items[i].FindControl("LinkButton1")).Visible = false;
                ((LinkButton)DataList1.Items[i].FindControl("LinkButton2")).Visible = true;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string path = "~/UsersPic/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
            string username = "";
            try
            {
                username = db.extscalr("Select Username from Tb_Login where Username='" + TextBox1.Text + "'");
            }
            catch (Exception ex)
            {
                username = "";
            }
            if (username == "")
            {
                string[] ar = (TextBox3.Text).Split('@');
                string tok_path = Server.MapPath("~/RSA_Keys/" + ar[0]);
                Directory.CreateDirectory(tok_path);
                
                string public_path = Server.MapPath("~/RSA_Keys/" + ar[0] + "/" + ar[0] + ".pbl");
                string private_path = Server.MapPath("~/RSA_Keys/" + ar[0] + "/" + ar[0] + ".pri");

                rsa.MakeKey(tok_path, public_path, private_path);

                MailSender snd = new MailSender();
                string sub = "You are Successfully registered to SACS";// Your secret ay for data retreival "
                snd.send_msg_attachment(sub, "Your Secret key for downloading Operation ", "SACS Notification", private_path, TextBox3.Text);

                bool a = db.extnon("insert into Tb_UserRegister  values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + path + "')");
                bool b = db.extnon("insert into Tb_Login values('" + TextBox3.Text + "','" + TextBox5.Text + "','" + "User" + "','0')");
                if (a == true && b == true)
                {
                    TextBox1.Text = TextBox5.Text = TextBox3.Text = TextBox6.Text=TextBox4.Text="";
                    show();
                    ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Registration Successfull')</script>");
                }

            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Already a User!! please Try another MailId')</script>");

            }
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Please upload Photo')</script>");

        }
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        string username = ((Label)e.Item.FindControl("Label1")).Text;
        db.extnon("update Tb_Login set status='0' where Username='" + username + "'");
        ((LinkButton)e.Item.FindControl("LinkButton1")).Visible = false;
        ((LinkButton)e.Item.FindControl("LinkButton2")).Visible = true;
        show();
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string username = ((Label)e.Item.FindControl("Label1")).Text;
        db.extnon("update Tb_Login set status='1' where Username='" + username + "'");
        ((LinkButton)e.Item.FindControl("LinkButton1")).Visible = true;
        ((LinkButton)e.Item.FindControl("LinkButton2")).Visible = false;
        show();
    }
}