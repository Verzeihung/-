<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OUTNews.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        *帳號：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="帳號介於4~8" ValidationExpression="\w{4,8}"></asp:RegularExpressionValidator>
    
        <br />
        *密碼：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="密碼介於6~8" ValidationExpression="\w{6,8}"></asp:RegularExpressionValidator>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="加入會員" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消" />
    
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ID] WHERE [帳號] = @帳號" InsertCommand="INSERT INTO [ID] ([帳號], [密碼]) VALUES (@帳號, @密碼)" SelectCommand="SELECT * FROM [ID]" UpdateCommand="UPDATE [ID] SET [密碼] = @密碼 WHERE [帳號] = @帳號">
            <DeleteParameters>
                <asp:Parameter Name="帳號" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="帳號" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="密碼" Type="String" />
                <asp:Parameter Name="帳號" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="帳號" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="帳號" HeaderText="帳號" ReadOnly="True" SortExpression="帳號" />
                <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
