<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_click.aspx.cs" Inherits="ExtAspNet.Examples.button.button_click" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Button ID="btnServerClick" Text="服务器端事件" OnClick="btnServerClick_Click" runat="server">
    </ext:Button>
    <br />
    <br />
    <ext:Button ID="btnClientClick" Text="客户端事件" OnClientClick="alert('这是客户端事件');" EnablePostBack="false"
        CssClass="inline" runat="server">
    </ext:Button>
    <ext:Button ID="btnClientClick2" Text="服务器端生成的客户端事件" EnablePostBack="false" runat="server">
    </ext:Button>
    <br />
    <br />
    </form>
</body>
</html>
