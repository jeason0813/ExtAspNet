<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_checkall.aspx.cs"
    Inherits="ExtAspNet.Examples.tree.checkbox.tree_checkall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" OnNodeCheck="Tree1_NodeCheck" Width="500px" ShowHeader="true"
        Title="树控件" runat="server">
        <Nodes>
            <ext:TreeNode Text="中国" EnableCheckBox="true" AutoPostBack="true" Expanded="true">
                <ext:TreeNode AutoPostBack="true" Text="河南省" EnableCheckBox="true" Expanded="true">
                    <ext:TreeNode Text="驻马店市" AutoPostBack="true" EnableCheckBox="true" NodeID="zhumadian">
                        <ext:TreeNode Text="遂平县" AutoPostBack="true" EnableCheckBox="true" NodeID="Suiping">
                        </ext:TreeNode>
                        <ext:TreeNode Text="西平县" AutoPostBack="true" EnableCheckBox="true" NodeID="Xiping">
                        </ext:TreeNode>
                    </ext:TreeNode>
                    <ext:TreeNode Text="漯河市" AutoPostBack="true" EnableCheckBox="true" NodeID="luohe" />
                </ext:TreeNode>
                <ext:TreeNode AutoPostBack="true" EnableCheckBox="true" Text="安徽省" Expanded="true"
                    NodeID="Anhui">
                    <ext:TreeNode EnableCheckBox="true" AutoPostBack="true" Text="合肥市" NodeID="Hefei">
                    </ext:TreeNode>
                    <ext:TreeNode EnableCheckBox="true" AutoPostBack="true" Text="黄山市" NodeID="Huangshan">
                    </ext:TreeNode>
                </ext:TreeNode>
            </ext:TreeNode>
        </Nodes>
    </ext:Tree>
    </form>
</body>
</html>
