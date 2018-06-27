using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    string ssss;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string Path = Server.MapPath("/input.txt");
            using (StreamReader sr = File.OpenText(Path))
            {
                String input;
                while ((input = sr.ReadLine()) != null)
                {
                    Label1.Text = input;
                    Label2.Text = input;
                }
            }
            string Path2 = Server.MapPath("/output.txt");
            using (StreamReader sr = File.OpenText(Path2))
            {
                String output;
                while ((output = sr.ReadLine()) != null)
                {
                    ssss = output;
                }
            }
            Image1.ImageUrl = "photo/" + ssss;
            SqlDataSource1.SelectCommand = "SELECT * FROM [Table] WHERE image_id like '%" + (Image1.ImageUrl).Remove(0, 6).Replace("'", "''") + "'";
            GridView1.DataSourceID = SqlDataSource1.ID;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            try
            {
                if (gb_content.Text != "")
                {
                    SqlDataSource1.InsertCommand = "insert into [Table]([image_id],[gb_user],[gb_content])values(@image_id,@gb_user,@gb_content)";
                    SqlDataSource1.InsertParameters.Add("image_id", System.TypeCode.String, (Image1.ImageUrl).Remove(0,6));
                    SqlDataSource1.InsertParameters.Add("gb_user", System.TypeCode.String, Label2.Text);
                    SqlDataSource1.InsertParameters.Add("gb_content", System.TypeCode.String, gb_content.Text);
                    SqlDataSource1.Insert();
                    SqlDataSource1.SelectCommand = "SELECT * FROM [Table] WHERE image_id like '%" + (Image1.ImageUrl).Remove(0, 6).Replace("'", "''") + "'";
                    GridView1.DataSourceID = SqlDataSource1.ID;
                    gb_content.Text = "";
                }
            }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }

    }
}