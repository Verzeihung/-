using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Test : System.Web.UI.Page
{
    Random rn=new Random();
    static int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        im();
        string Dir = Page.Server.MapPath("~/");
        StreamWriter sw = new StreamWriter(Dir + "input.txt");
        sw.WriteLine("anonymous");
        sw.Flush();
        sw.Close();
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
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        im();
    }
    
    void im()
    {
        i = rn.Next(151) + 1;
            if (i < 10) { Image1.ImageUrl = "~/image/00" + i + ".png"; }
            else if (i >= 10 & i < 100) { Image1.ImageUrl = "~/image/0" + i + ".png"; }
            else if (i >= 100) { Image1.ImageUrl = "~/image/" + i + ".png"; }
    }
}