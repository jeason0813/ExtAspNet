<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe_window1.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.iframe_iframe_window1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager AutoSizePanelID="formPanel" ID="PageManager1" runat="server"></ext:PageManager>
    <ext:Panel ID="formPanel" ShowBorder="false" ShowHeader="false" EnableBackgroundColor="true"
        runat="server">
        <Toolbars>
            <ext:Toolbar runat="server">
                <Items>
                    <ext:Button ID="btnPostBackClose" runat="server" OnClick="btnPostBackClose_Click"
                        Text="关闭-回发父页面">
                    </ext:Button>
                    <ext:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </ext:ToolbarSeparator>
                    <ext:Button ID="Button1" EnablePostBack="false" Text="在本页面弹出窗体" runat="server">
                    </ext:Button>
                    <ext:Button ID="Button2" EnablePostBack="false" Text="在父页面弹出窗体" runat="server">
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </Toolbars>
    </ext:Panel>
    <ext:Window ID="Window1" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Height="300px" Width="450px" EnableConfirmOnClose="true"
        Title="窗体三">
    </ext:Window>
    <ext:Window ID="Window2" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" Height="300px" Width="450px"
        EnableConfirmOnClose="true" CloseAction="HidePostBack" Title="窗体四">
    </ext:Window>
    </form>
</body>
</html>
