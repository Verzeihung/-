<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginFileupload .aspx.cs" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large"></asp:Label>
        <br />
    
        <asp:Menu ID="Menu1" runat="server" Font-Names="楷体" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#3366CC">
            <Items>
                <asp:MenuItem Text="Pokémon" Value="1" NavigateUrl="~/LoginHome.aspx"></asp:MenuItem>
                <asp:MenuItem Text="會員登出" Value="2" NavigateUrl="~/OUThome.aspx"></asp:MenuItem>
                <asp:MenuItem Text="新作品" Value="3" NavigateUrl="~/LoginNewspaper.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="上傳" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IMAGE]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
