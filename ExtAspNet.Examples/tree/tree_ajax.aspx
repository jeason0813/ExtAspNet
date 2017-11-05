<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_ajax.aspx.cs" Inherits="ExtAspNet.Examples.data.tree_ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" EnableArrows="true" OnNodeExpand="Tree1_NodeExpand" Width="500px"
        ShowHeader="true" Title="延迟加载的树控件" AutoLeafIdentification="false" runat="server">
        <Nodes>
            <ext:TreeNode Text="中国" Expanded="true">
                <ext:TreeNode Text="河南省" Expanded="true">
                    <ext:TreeNode Text="驻马店市（此节点延迟加载）" NodeID="zhumadian">
                    </ext:TreeNode>
                    <ext:TreeNode Text="漯河" NodeID="luohe" Leaf="true" />
                </ext:TreeNode>
                <ext:TreeNode Text="安徽省" Expanded="true" NodeID="anhui">
                    <ext:TreeNode Text="合肥市" NodeID="hefei">
                        <ext:TreeNode Text="金色池塘小区" NodeID="golden" Leaf="true">
                        </ext:TreeNode>
                        <ext:TreeNode Text="中国科学技术大学" NodeID="ustc" Leaf="true">
                        </ext:TreeNode>
                    </ext:TreeNode>
                </ext:TreeNode>
            </ext:TreeNode>
        </Nodes>
    </ext:Tree>
    <br />
    <br />
    <br />
    </form>
</body>
</html>
