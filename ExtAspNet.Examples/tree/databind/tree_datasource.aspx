<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_datasource.aspx.cs"
    Inherits="ExtAspNet.Examples.tree.databind.tree_datasource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" Width="500px" EnableArrows="true" EnableSingleExpand="true"
        ShowHeader="true" Title="树控件（绑定到 XmlDataSource）" runat="server">
    </ext:Tree>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/tree/databind/website.xml">
    </asp:XmlDataSource>
    <br />
    注意：这个树启用了 EnableSingleExpand，也就是说同一级目录同时只能展开一个。
    </form>
</body>
</html>
