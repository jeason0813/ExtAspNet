﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback_top2.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.parent_postback_top2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    页面二：parent_postback_top2.aspx
    <br />
    <ext:Label ID="labResult" runat="server">
    </ext:Label>
    <br />
    <br />
    <ext:Window ID="Window1" runat="server" Height="350px" EnableIFrame="true" IFrameUrl="parent_postback_top3.aspx"
        IsModal="true" Popup="true" Width="500px" EnableMaximize="true" EnableResize="true"
        Target="Top" OnClose="Window1_Close" Title="页面二中的弹出对话框">
    </ext:Window>
    </form>
</body>
</html>
