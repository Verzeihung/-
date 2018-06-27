using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

public partial class Default5 : System.Web.UI.Page
{
    int n = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        GetPhto();
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
        try
        {
            if (FileUpload1.HasFiles)
            {
                string ExtName = System.IO.Path.GetExtension(this.FileUpload1.PostedFile.FileName).ToLower();
                string MIME = "";
                switch (ExtName)
                {
                    case ".png":
                        MIME = ".png";
                        break;
                    default:
                        break;
                }
                if (MIME != "")
                {
                    SqlDataSource1.InsertCommand = "insert into [IMAGE]([帳號],[MIME])values(@帳號,@MIME)";
                    SqlDataSource1.InsertParameters.Add("帳號", System.TypeCode.String, Label1.Text);
                    SqlDataSource1.InsertParameters.Add("MIME", System.TypeCode.String, n+MIME);
                    FileUpload1.SaveAs(Server.MapPath("photo") + "\\" + n + MIME);
                    Label3.Text = "成功上傳囉～";
                    SqlDataSource1.Insert();
                }
            }
        }
        catch(Exception ex)
        {
            Label2.Text=ex.Message;
        }
    }
    void GetPhto()
    {
        DirectoryInfo dir = new DirectoryInfo(Server.MapPath("photo"));
        FileInfo[] finfo = dir.GetFiles();
        Label1.Text = "";
        foreach (FileInfo result in finfo)
        {
            n++;
        }
    }
}