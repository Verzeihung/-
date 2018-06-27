<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OUTMessage.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 214px;
        }
        .auto-style3 {
            width: 64px;
            text-align: center;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            width: 64px;
            text-align: right;
            height: 42px;
        }
        .auto-style7 {
            height: 42px;
        }
        .auto-style4 {
            width: 64px;
            text-align: right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large"></asp:Label>
    
        <br />
    
        <asp:Menu ID="Menu1" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="楷体" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#3366CC">
            <Items>
                <asp:MenuItem NavigateUrl="~/OUThome.aspx" Text="Pokémon" Value="1"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Login.aspx" Text="會員登入" Value="2"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/OUTNews.aspx" Text="註冊" Value="3"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/OUTNewspaper.aspx" Text="新作品" Value="4"></asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
        <asp:Image ID="Image1" runat="server" />
        <br />
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style5">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gb_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="gb_id" HeaderText="gb_id" InsertVisible="False" ReadOnly="True" SortExpression="gb_id" Visible="False" />
                                <asp:BoundField DataField="image_id" HeaderText="image_id" SortExpression="image_id" Visible="False" />
                                <asp:BoundField DataField="gb_user" HeaderText="gb_user" SortExpression="gb_user" />
                                <asp:BoundField DataField="gb_content" HeaderText="gb_content" SortExpression="gb_content" />
                                <asp:BoundField DataField="gb_time" HeaderText="gb_time" SortExpression="gb_time" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">使用:</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">內容:</td>
                    <td>
                        <asp:TextBox ID="gb_content" runat="server" Height="156px" TextMode="MultiLine" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" style="text-align: center" Text="送出留言" Width="85px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
