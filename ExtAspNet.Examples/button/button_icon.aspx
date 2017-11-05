<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_icon.aspx.cs" Inherits="ExtAspNet.Examples.button.button_icon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Button ID="btnIcon1" Text="图标在左侧" Icon="Report" runat="server" CssClass="inline" />
    <ext:Button ID="btnIcon2" Text="图标在右侧" IconAlign="Right" Icon="Report" runat="server" />
    <br />
    <br />
    <ext:Button ID="btnIcon3" Text="图标在上面" IconAlign="Top" Icon="Report" runat="server"
        CssClass="inline" />
    <ext:Button ID="btnIcon4" Text="图标在下面" IconAlign="Bottom" Icon="Report" runat="server" />
    <br />
    <br />
    <ext:Button ID="btnCustomIcon" Text="自定义图标（点击修改图标）" OnClick="btnCustomIcon_Click"
        IconUrl="~/images/16/1.png" runat="server" />
    <br />
    <br />
    只有图片的按钮：
    <br />
    <br />
    <ext:Button ID="Button1" IconUrl="~/images/16/1.png" CssClass="inline" runat="server" />
    <ext:Button ID="Button2" IconUrl="~/images/16/8.png" runat="server" />
    <br />
    </form>
</body>
</html>
