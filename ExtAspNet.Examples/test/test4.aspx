<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test4.aspx.cs" Inherits="ExtAspNet.Examples.test4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager2" runat="server" />
    <ext:Panel ID="Panel1" runat="server" Height="300px" Width="400px" ShowBorder="True"
        Layout="Anchor" ShowHeader="True" Title="Panel1">
        <Items>
            <ext:Panel ID="Panel2" AnchorValue="100%" Height="100" EnableBackgroundColor="true"
                runat="server" ShowBorder="True" ShowHeader="true" Title="Panel2">
            </ext:Panel>
            <ext:Panel ID="Panel3" AnchorValue="100% -100" EnableBackgroundColor="true" runat="server"
                ShowBorder="True" ShowHeader="true" Title="Panel3">
            </ext:Panel>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
