<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OUThome.aspx.cs" Inherits="Test" %>

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
                <asp:MenuItem NavigateUrl="~/OUThome.aspx" Text="Pokémon" Value="1"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Login.aspx" Text="會員登入" Value="2"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/OUTNews.aspx" Text="註冊" Value="3"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/OUTNewspaper.aspx" Text="新作品" Value="4"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <table>
    <tr>
        <td class="auto-style1">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <asp:Image ID="Image1" runat="server" Height="595px" Width="595px" ImageUrl="~/image/001.png" />
            <br />
            <asp:Button ID="Button1" runat="server"  Height="30px" OnClick="Button1_Click" Width="100px" BackColor="#FF9900" BorderColor="#CC6600" BorderStyle="None" Font-Names="Lucida Handwriting" Font-Size="Large" ForeColor="White" Text="Chagne" />
        </td>
        <td class="auto-style1">
        <!DOCTYPE html>

<html><head>
    <title>塗鴉板</title>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.6.4.js"></script>
    <script>	
        $(function () {
            //產生不同顏色的div方格當作調色盤選項
            var colors =
            "black;red;orange;yellow;lawngreen;mediumblue;turquoise;mediumslateblue;pink;white".split(';');
            var sb = [];
            $.each(colors, function (i, v) {
                sb.push("<div class='option' style='background-color:" + v + "'></div>");
            });
            $("#dPallete").html(sb.join("\n"));
            //產生不同尺寸的方格當作線條粗細選項
            sb = [];
            for (var i = 1; i <= 10; i++)
                sb.push("<div class='option lw'>" +
         "<div    style='margin-top:14px;margin-left:14px;;margin-bottom:14px;width:%px;height:%px'></div> </div>" 
                .replace(/%/g, i).replace(/#/g, 10 - i / 2));
            $("#dLine").html(sb.join('\n'));
            var $clrs = $("#dPallete .option");
            var $lws = $("#dLine .option");
            //點選調色盤時切換焦點並取得顏色存入p_color，
            //同時變更線條粗細選項的方格的顏色
            $clrs.click(function () {
                $clrs.removeClass("active");
                $(this).addClass("active");
                p_color = this.style.backgroundColor;
                $lws.children("div").css("background-color", p_color);
            }).first().click();
            //點選線條粗細選項時切換焦點並取得寬度存入p_width
            $lws.click(function () {
                $lws.removeClass("active");
                $(this).addClass("active");
                p_width =
                    $(this).children("div").css("width").replace("px", "");
 
            }).eq(3).click();
            //取得canvas context
            var $canvas = $("#cSketchPad");
            var ctx = $canvas[0].getContext("2d");
            ctx.lineCap = "round";
            ctx.fillStyle = "white"; //整個canvas塗上白色背景避免PNG的透明底色效果
            ctx.fillRect(0, 0, $canvas.width(), $canvas.height());
            var drawMode = false;
            //canvas點選、移動、放開按鍵事件時進行繪圖動作
            $canvas.mousedown(function (e) {
                ctx.beginPath();
                ctx.strokeStyle = p_color;
                ctx.lineWidth = p_width;
                ctx.moveTo(e.pageX - $canvas.position().left, e.pageY - $canvas.position().top);
                drawMode = true;
            })
            .mousemove(function (e) {
                if (drawMode) {
                    ctx.lineTo(e.pageX - $canvas.position().left, e.pageY - $canvas.position().top);
                    ctx.stroke();
                }
            })
            .mouseup(function (e) {
                drawMode = false;
            });
          //利用.toDataqURL()將繪圖結果轉成圖檔
            $("#bGenImage").click(function () {
                $("#dOutput").html(
                $("<img />", { src: $canvas[0].toDataURL(),
                    "class": "output"
                }));
            });
        });
    </script>
    <style>
        body,input { font-size: 9pt; }
        #dCanvas,#dLine { clear: both; }
        .option
        {
            float: left; width: 38px; height:38px; border: 2px solid darkgray;
            margin-right:20px; margin-bottom: 5px;
        }
        .active { border: 2px solid black; }
        .lw { text-align: center; vertical-align: middle; }
        img.output { border: 1px solid green; }
        #cSketchPad { cursor: arrow; }
        .auto-style1 {
            height: 721px;
        }
    </style>
    
</head>
<body>
<table>
<tr>
<td>
<div>
<div id="dPallete"></div>
<div id="dLine"></div>
<div id="dCanvas">
<blockquote>&nbsp;</blockquote>
<canvas id="cSketchPad" width="595" height="595" style="border: 4px solid #00B8B8" />
</div>
  <input id="clear" type="button" style="background-image:url(http://i.imgur.com/sr52eBB.png)  ;width:100px;height:30px;" />

  <div style="border-color:silver dimgray dimgray gainsboro;float:left;border-width:1px;border-style:solid;padding:0.05px;margin:2px;"><a href="#" download="dl.png" onclick="this.href=canvas.toDataURL();" ><img src="http://i.imgur.com/bY3QsxT.png"/></a>
    </div>
 </div>    

 <!--全部清除的按鈕-->
    <script>
	
	var canvas = document.getElementById('cSketchPad');
      var context = canvas.getContext('2d');
	 document.getElementById('clear').addEventListener('click', function() {
        context.clearRect(0,0, canvas.width, canvas.height);
		
		
	   context.fillStyle="#FFFFFF";
       context.fillRect(0,0, canvas.width, canvas.height);

      }, false);

	
    </script>
    
    
<div id="dOutput"></div>
</td>
<td width="80px;">
<div>
<!--兩個按鈕先將畫布清除改變id為img的<img>裡的圖-->
    <!--onclick裡面context.clearRect(0,0, canvas.width, canvas.height);是將畫布清空(一定要有不然圖會一直疊上去)-->
    <!--document.getElementById('img').src='http://www.w3.org/html/logo/img/one-color.png'是將id為img的圖改成http://www.w3.org/html/logo/img/one-color.png-->

   <!--用div style="display:none"把id為img的<img>隱藏起來-->
    <div style="display:none;"><img src="" id="img" name="img"></div>
<script>
//讀取id為img的<img>
		var img = document.getElementById('img');
img.onload = function(){
    context.drawImage(img, 10, 10,450,580);
};	

</script>

</div>
</td>
</tr>
</table>
</body>
</html>
        </td>

    </tr>
            </table>

    </div>
    </form>
</body>
</html>
