<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window.aspx.cs" Inherits="ExtAspNet.Examples.layout.window" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Button ID="btnShowInServer" CssClass="inline" Text="显示窗体（服务端代码）" runat="server"
        OnClick="btnShowInServer_Click">
    </ext:Button>
    <ext:Button ID="btnHideInServer" Text="隐藏窗体（服务端代码）" runat="server" OnClick="btnHideInServer_Click">
    </ext:Button>
    <br />
    <br />
    <ext:Button ID="btnShowInClient" CssClass="inline" Text="显示窗体（客户端代码）" EnablePostBack="false"
        runat="server">
    </ext:Button>
    <ext:Button ID="btnHideInClient" CssClass="inline" Text="隐藏窗体（客户端代码）" EnablePostBack="false"
        runat="server">
    </ext:Button>
    <ext:Button ID="btnHideInClient2" Text="隐藏窗体，带回发参数（客户端代码）" EnablePostBack="false"
        runat="server">
    </ext:Button>
    <br />
    <br />
    <ext:Window ID="Window2" Width="500px" Height="300px" Icon="TagBlue" Title="窗体" Hidden="false"
        EnableMaximize="true" EnableCollapse="true" runat="server" EnableResize="true"
        IsModal="false" CloseAction="HidePostBack" OnClose="Window2_Close" Layout="Fit">
        <Items>
            <ext:ContentPanel ShowBorder="false" ShowHeader="false" ID="ContentPanel2" EnableBackgroundColor="true"
                BodyPadding="5px" runat="server">
                <br /> 
                这是窗体的内容。
                <br />
                <br />
                <br />
                <br />
            </ext:ContentPanel>
        </Items>
    </ext:Window>
    </form>
</body>
</html>
