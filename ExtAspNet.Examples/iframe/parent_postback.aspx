<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.parent_postback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    页面一：parent_postback.aspx
    <ext:Label ID="labResult" runat="server">
    </ext:Label>
    <br />
    <ext:Button ID="Button1" CssClass="inline" runat="server" Text="页面一中的按钮">
    </ext:Button>
    <ext:Button ID="Button2" runat="server" EnablePostBack="false" Text="刷新面板一中的IFrame">
    </ext:Button>
    <br />
    <ext:Panel ID="Panel1" runat="server" EnableBackgroundColor="true" ShowBorder="true"
        Width="800px" Height="450px" EnableIFrame="true" IFrameUrl="parent_postback2.aspx"
        ShowHeader="true" Title="面板一">
    </ext:Panel>
    </form>
</body>
</html>
