<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_sitemap.aspx.cs" Inherits="ExtAspNet.Examples.tree.databind.tree_sitemap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="树控件（绑定到 SiteMap）" runat="server">
        <Mappings>
            <ext:XmlAttributeMapping From="url" To="NavigateUrl" />
            <ext:XmlAttributeMapping From="title" To="Text" />
            <ext:XmlAttributeMapping From="description" To="ToolTip" />
        </Mappings>
    </ext:Tree>
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/tree/databind/Web.sitemap">
    </asp:XmlDataSource>
    </form>
</body>
</html>
