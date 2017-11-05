<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.iframe_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <br />
    <ext:Button ID="Button1" EnablePostBack="false" Text="在本页面弹出窗体" runat="server">
    </ext:Button>
    <ext:Window ID="Window1" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Height="450px" Width="750px" Title="窗体一">
    </ext:Window>
    <br />
    <br />
    <ext:Button ID="Button2" EnablePostBack="false" Text="在父页面弹出窗体" runat="server">
    </ext:Button>
    <ext:Window ID="Window2" Popup="false" EnableIFrame="true" IFrameUrl="#" EnableMaximize="true"
        EnableResize="true" Target="Parent" runat="server" Height="450px" Width="750px"
        Title="窗体二">
    </ext:Window>
    <br />
    <ext:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </ext:Label>
    <br />
    </form>
</body>
</html>
