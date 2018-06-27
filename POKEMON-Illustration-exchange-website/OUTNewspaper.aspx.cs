using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    int p;
    String[] qq=new String[10];
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ShowPhto();
            string Path = Server.MapPath("/input.txt");
            using (StreamReader sr = File.OpenText(Path))
            {
                String input;
                while ((input = sr.ReadLine()) != null)
                {
                    Label1.Text = input;
                }
            }
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    void ShowPhto()
    {
        DirectoryInfo dir = new DirectoryInfo(Server.MapPath("photo"));
        FileInfo[] finfo = dir.GetFiles();
        Label2.Text = "";
        int n = 0; int a = 0;
            foreach (FileInfo result in finfo)
            {
                n++; a = n;
            //   Label2.Text += "<a href=default2.aspx"+ " target=_blank ><img src=photo/" + result.Name + " width=360 heignt=240 border=0 >"+result.Name+"</a>  ";
            if (a >= 9) { a = n % 9; }
            qq[a] = result.Name;
                
                /*if (n % 4 == 0)//顯示幾ㄍ就跳
                {
                    Label2.Text += "<p>";
                }*/
            }
            ImageButton1.ImageUrl = "photo/" + qq[0];
            ImageButton2.ImageUrl = "photo/" + qq[1];
            ImageButton3.ImageUrl = "photo/" + qq[2];
            ImageButton4.ImageUrl = "photo/" + qq[3];
            ImageButton5.ImageUrl = "photo/" + qq[4];
            ImageButton6.ImageUrl = "photo/" + qq[5];
            ImageButton7.ImageUrl = "photo/" + qq[6];
            ImageButton8.ImageUrl = "photo/" + qq[7];
            ImageButton9.ImageUrl = "photo/" + qq[8];
    }

    String a;
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton1.ImageUrl;
        a=a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton2.ImageUrl;
        a = a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton3.ImageUrl;
        a = a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton4.ImageUrl;
        a = a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton5.ImageUrl;
        a = a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton6.ImageUrl;
        a = a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton7.ImageUrl;
        a = a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton8.ImageUrl;
        a = a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        a = ImageButton9.ImageUrl;
        a = a.Remove(0, 6);
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "output.txt");
        sw.WriteLine(a);
        sw.Flush();
        sw.Close();
        Response.Redirect("OUTMessage.aspx");
    }
}
