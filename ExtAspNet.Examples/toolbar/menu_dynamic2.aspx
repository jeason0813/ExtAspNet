<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu_dynamic2.aspx.cs"
    Inherits="ExtAspNet.Examples.toolbar.menu_dynamic2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Panel ShowBorder="true" Title="面板" BodyPadding="5px" Height="300px"
        Width="450px" runat="server">
        <Toolbars>
            <ext:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <ext:Button ID="Button1" EnablePostBack="false" OnClientClick="window.open('../default.aspx', '_blank');"
                        Text="点击打开新窗体（内联按钮）" runat="server">
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </Toolbars>
    </ext:Panel>
    </form>
</body>
</html>
