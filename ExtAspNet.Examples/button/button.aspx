<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button.aspx.cs" Inherits="ExtAspNet.Examples.button.button" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .redbutton button
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Button ID="btnChangeEnable" Text="启用后面的按钮" runat="server" OnClick="btnChangeEnable_Click"
        CssClass="inline" />
    <ext:Button ID="btnEnable" Text="禁用的按钮" OnClick="btnEnable_Click" runat="server"
        Enabled="False" />
    <br />
    <br />
    <ext:Button ID="btnChangePressed" Text="改变后面按钮的按下状态" runat="server" OnClick="btnChangePressed_Click"
        CssClass="inline" />
    <ext:Button ID="btnPressed" Text="按下的按钮" runat="server" EnablePress="true" Pressed="true" />
    <br />
    <br />
    <ext:Button ID="btnTooltip" Text="这个按钮有提示信息（点击改变提示信息）" ToolTip="这是按钮的提示信息" OnClick="btnTooltip_Click"
        runat="server">
    </ext:Button>
    <br />
    <br />
    <ext:Button ID="Button1" Text="普通按钮" runat="server" EnablePostBack="false" CssClass="inline" />
    <ext:Button ID="Button2" Text="中等大小按钮" runat="server" Size="Medium" EnablePostBack="false"
        CssClass="inline" />
    <ext:Button ID="Button3" Text="大按钮" runat="server" Size="Large" EnablePostBack="false" />
    </form>
</body>
</html>
