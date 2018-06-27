<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginNewspaper.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 385px;
        }
        .auto-style2 {
            height: 225px;
        }
        .auto-style3 {
            height: 225px;
            width: 324px;
        }
        .auto-style4 {
            height: 3px;
            width: 324px;
        }
        .auto-style5 {
            height: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large"></asp:Label>
        <br />
    
        <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" Font-Names="楷体" Font-Size="XX-Large" Font-Underline="True" ForeColor="#3366CC">
            <Items>
                <asp:MenuItem NavigateUrl="~/LoginHome.aspx" Text="Pokémon" Value="1"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/OUThome.aspx" Text="會員登出" Value="2"></asp:MenuItem>
                <asp:MenuItem Text="上傳作品" Value="3" NavigateUrl="~/LoginFileupload .aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LoginNewspaper.aspx" Text="新作品" Value="4"></asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4"><span style="color: rgb(185, 4, 4); font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: 1px; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">神奇寶貝作品列表</span></td>
                            <td class="auto-style5"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            &nbsp;<br />
&nbsp;<br />
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="148px" OnClick="ImageButton1_Click" Width="250px" />
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="148px" OnClick="ImageButton2_Click" Width="250px" />
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="148px" OnClick="ImageButton3_Click" Width="250px" />
                                <br />
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="148px" OnClick="ImageButton4_Click" Width="250px" />
                                <asp:ImageButton ID="ImageButton5" runat="server" Height="148px" OnClick="ImageButton5_Click" Width="250px" />
                                <asp:ImageButton ID="ImageButton6" runat="server" Height="148px" OnClick="ImageButton6_Click" Width="250px" />
                                <br />
                                <asp:ImageButton ID="ImageButton7" runat="server" Height="148px" OnClick="ImageButton7_Click" Width="250px" />
                                <asp:ImageButton ID="ImageButton8" runat="server" Height="148px" OnClick="ImageButton8_Click" Width="250px" />
                                <asp:ImageButton ID="ImageButton9" runat="server" Height="148px" OnClick="ImageButton9_Click" Width="250px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IMAGE]"></asp:SqlDataSource>
    </form>
</body>
</html>
