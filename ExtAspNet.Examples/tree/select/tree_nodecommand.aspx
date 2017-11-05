<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_nodecommand.aspx.cs"
    Inherits="ExtAspNet.Examples.tree.select.tree_nodecommand" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" Width="500px" OnNodeCommand="Tree1_NodeCommand" ShowHeader="true"
        Title="树控件" runat="server">
        <Nodes>
            <ext:TreeNode Text="中国" Expanded="true">
                <ext:TreeNode Text="河南省" Expanded="true">
                    <ext:TreeNode Text="驻马店市（点击回发）" EnablePostBack="true" Expanded="true" NodeID="Zhumadian">
                        <ext:TreeNode Text="遂平县（点击回发）" EnablePostBack="true" NodeID="Suiping">
                        </ext:TreeNode>
                        <ext:TreeNode Text="西平县（点击回发）" EnablePostBack="true" NodeID="Xiping">
                        </ext:TreeNode>
                    </ext:TreeNode>
                    <ext:TreeNode Text="漯河市" Enabled="true" NodeID="Luohe" />
                </ext:TreeNode>
                <ext:TreeNode Text="安徽省" Expanded="true" NodeID="Anhui">
                    <ext:TreeNode Text="合肥市" NodeID="Hefei">
                    </ext:TreeNode>
                    <ext:TreeNode Text="黄山市" NodeID="Huangshan">
                    </ext:TreeNode>
                </ext:TreeNode>
            </ext:TreeNode>
        </Nodes>
    </ext:Tree>
    <br />
    <ext:Label ID="labResult" runat="server">
    </ext:Label>
    <br />
    <br />
    </form>
</body>
</html>
