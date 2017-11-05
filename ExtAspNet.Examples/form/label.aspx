<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="label.aspx.cs" Inherits="ExtAspNet.Examples.form.label" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Label ID="Label1" Text="普通的 Label 标签，会自动编码字符串（比如：<strong></strong>）" runat="server">
    </ext:Label>
    <br />
    <ext:Label ID="Label4" EncodeText="false" Text="<a href='http://www.ustc.edu.cn/' target='_blank'>中国科学技术大学（Label 标签生成的链接）</a>"
        runat="server">
    </ext:Label>
    <br />
    <ext:Label ID="Label2" EncodeText="false" CssStyle="color:red;font-weight:bold;"
        Text="修改文本的样式（CssStyle）" runat="server">
    </ext:Label>
    <br />
    <ext:Label ID="Label3" Enabled="true" EncodeText="false" Text="<span style='color:red;font-weight:bold;'>修改文本的样式（内嵌HTML）</span>"
        runat="server">
    </ext:Label>
    <br />
    <ext:Button ID="btnChangeEnable" Text="启用/禁用最后一个标签" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
</body>
</html>
