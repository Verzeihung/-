<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
    <div>
    
        帳號：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        密碼：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登入" />
        <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click1" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ID]">
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="帳號" DataSourceID="SqlDataSource1" EmptyDataText="找不到資料" Visible="False">
            <Columns>
                <asp:BoundField DataField="帳號" HeaderText="帳號" ReadOnly="True" SortExpression="帳號" />
                <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
            </Columns>
        </asp:GridView>
        <br />
    </form>
</body>
</html>
