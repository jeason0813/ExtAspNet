<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toolbar_iframe.aspx.cs"
    Inherits="ExtAspNet.Examples.toolbar.toolbar_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Panel runat="server" ID="Panel1" Title="面板" Width="600px" Height="450px" EnableIFrame="true"
        IFrameName="main" IFrameUrl="#">
        <Toolbars>
            <ext:Toolbar runat="server" Position="Top">
                <Items>
                    <ext:Button runat="server" ID="Button1" Text="打开hello.aspx" EnablePostBack="false"
                        OnClientClick="window.open('../basic/hello.aspx', 'main');">
                    </ext:Button>
                    <ext:Button runat="server" ID="Button2" Text="打开hello_aspnet.aspx" EnablePostBack="false"
                        OnClientClick="window.open('../basic/hello_aspnet.aspx', 'main');">
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </Toolbars>
        <Items>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
