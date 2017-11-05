﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspnet_literal.aspx.cs"
    Inherits="ExtAspNet.Examples.aspnet.aspnet_literal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AjaxAspnetControls="Label1,Literal1,Literal2_Container" runat="server" />
    <asp:Label ID="Label1" Text="Label1" runat="server"></asp:Label>
    <br />
    <asp:Literal ID="Literal1" Text="Literal1" runat="server"></asp:Literal>
    <br />
    <div id="Literal2_Container">
        <asp:Literal ID="Literal2" Text="Literal2" runat="server"></asp:Literal>
    </div>
    <br />
    <ext:Button ID="Button1" runat="server" Text="更新上面几个文本值" OnClick="Button1_Click">
    </ext:Button>
    <br />
    注意：只有Label1和Literal2的值更新了。
    </form>
</body>
</html>
