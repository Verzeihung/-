using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("OUThome.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.InsertParameters["帳號"].DefaultValue =
                TextBox1.Text;
            SqlDataSource1.InsertParameters["密碼"].DefaultValue =
                TextBox2.Text;
            if (TextBox1.Text == SqlDataSource1.InsertParameters["帳號"].DefaultValue)
            {
                Label1.Text = "註冊成功><";
                Button2.Text = "回到Pokémon";
            }
            SqlDataSource1.Insert();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}