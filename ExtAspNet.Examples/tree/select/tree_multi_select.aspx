<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_multi_select.aspx.cs"
    Inherits="ExtAspNet.Examples.tree.select.tree_multi_select" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" Width="500px" ShowHeader="true" EnableMultiSelect="true" Title="树控件"
        runat="server">
        <Nodes>
            <ext:TreeNode Text="中国" Expanded="true">
                <ext:TreeNode Text="河南省" Expanded="true">
                    <ext:TreeNode Text="驻马店市" Expanded="true" NodeID="Zhumadian">
                        <ext:TreeNode Text="遂平县" NodeID="Suiping">
                        </ext:TreeNode>
                        <ext:TreeNode Text="西平县" NodeID="Xiping">
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
    <br />
    注：这是一个可以多选的树，你可以按着“Ctrl”选择多项。
    <br />
    <br />
    <ext:Button ID="btnGetSelectedValues" OnClick="btnGetSelectedValues_Click" CssClass="inline"
        runat="server" Text="获取选中的节点列表">
    </ext:Button>
    <ext:Button ID="btnSelectOthers" OnClick="btnSelectOthers_Click" runat="server" Text="继续选中“合肥市”和“黄山市”">
    </ext:Button>
    <br />
    <ext:Label ID="labResult" runat="server">
    </ext:Label>
    <br />
    <br />
    </form>
</body>
</html>
