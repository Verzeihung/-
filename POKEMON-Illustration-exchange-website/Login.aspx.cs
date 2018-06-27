using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text.ToString() != null && TextBox2.Text.ToString() != null)
            {
                string newProdID = "";
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    string select = "SELECT * FROM [ID] WHERE 帳號 LIKE '" + TextBox1.Text.Replace("'", "''") + "'" + " AND 密碼 LIKE '" + TextBox2.Text.Replace("'", "''") + "'";
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(select, conn);
                    newProdID = (string)cmd.ExecuteScalar();//找到帳密
                }
                if (newProdID != null)
                {
                    string Dir = Page.Server.MapPath("~/");
                    StreamWriter sw = new StreamWriter(Dir + "input.txt");
                    sw.WriteLine(newProdID);
                    sw.Flush();
                    sw.Close();
                    Response.Redirect("LoginHome.aspx");
                }
                else
                {
                    Label1.Text = "帳號或密碼錯誤";
                }
            }
            else
            {
                Label1.Text = "帳號密碼不得空白";

            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Outhome.aspx");
    }
}