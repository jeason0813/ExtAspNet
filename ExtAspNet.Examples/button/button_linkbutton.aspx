<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_linkbutton.aspx.cs"
    Inherits="ExtAspNet.Examples.button.button_linkbutton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:LinkButton ID="LinkButton2" Text="客户端事件（服务器生成）" EnablePostBack="false" runat="server">
    </ext:LinkButton>
    <br />
    <ext:LinkButton ID="LinkButton3" Text="服务器端事件" OnClick="LinkButton3_Click" runat="server">
    </ext:LinkButton>
    <br />
    <br />
    <ext:LinkButton ID="LinkButton1" Enabled="true" Text="客户端事件（在页面中定义）" EnablePostBack="false"
        OnClientClick="clickLinkButton();" runat="server">
    </ext:LinkButton>
    <br />
    <ext:Button ID="btnChangeEnable" Text="启用/禁用最后一个链接按钮" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
    <script>
        function clickLinkButton() {
            top.X.alert("定义在页面中的客户端事件！");
        }
    </script>
</body>
</html>
