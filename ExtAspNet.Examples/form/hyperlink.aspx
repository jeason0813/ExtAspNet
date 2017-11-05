<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hyperlink.aspx.cs" Inherits="ExtAspNet.Examples.form.hyperlink" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:HyperLink ID="HyperLink3" Text="新窗口打开百度首页" Target="_blank" NavigateUrl="http://www.baidu.com/"
        runat="server">
    </ext:HyperLink>
    <br />
    <ext:HyperLink ID="HyperLink1" EncodeText="false" Text="新窗口打开 <span style='color:red;'>Google</span> 首页"
        Target="_blank" NavigateUrl="http://www.google.com/" runat="server">
    </ext:HyperLink>
    <br />
    <ext:HyperLink ID="HyperLink2" Enabled="true" Text="点击弹出对话框" NavigateUrl="javascript:;" runat="server">
    </ext:HyperLink>
    <br />
    <ext:Button ID="btnChangeEnable" Text="启用/禁用最后一个链接" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
</body>
</html>
