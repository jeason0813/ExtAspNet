﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="ExtAspNet.Examples.test2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    This is test2.aspx.
    <br />
    <ext:Button ID="Button1" runat="server" Text="Button">
    </ext:Button>
    <br />
    <ext:Panel ID="Panel1" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        ShowBorder="true" Width="800px" Height="600px" EnableIFrame="true" IFrameUrl="test3.aspx"
        ShowHeader="true" Title="Panel">
        <Items>
        </Items>
    </ext:Panel>
    <ext:Window EnableIFrame="true" IFrameUrl="~/test/test.aspx" Width="500px" Height="500px"
        runat="server">
    </ext:Window>
    </form>
</body>
</html>
