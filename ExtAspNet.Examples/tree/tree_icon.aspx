<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_icon.aspx.cs" Inherits="ExtAspNet.Examples.tree.tree_icon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="树控件" runat="server">
        <Nodes>
            <ext:TreeNode Text="中国" Expanded="true">
                <ext:TreeNode Text="河南省" Expanded="true">
                    <ext:TreeNode Text="驻马店市" Expanded="true" Icon="Anchor" NodeID="Zhumadian">
                        <ext:TreeNode Text="遂平县" Icon="Anchor" NodeID="Suiping">
                        </ext:TreeNode>
                        <ext:TreeNode Text="西平县" Icon="Anchor" NodeID="Xiping">
                        </ext:TreeNode>
                    </ext:TreeNode>
                    <ext:TreeNode Text="漯河市" NodeID="Luohe" />
                </ext:TreeNode>
                <ext:TreeNode Text="安徽省" Expanded="true" NodeID="Anhui">
                    <ext:TreeNode Expanded="true" Text="合肥市" NodeID="Hefei">
                        <ext:TreeNode Text="中国科学技术大学（链接）" NavigateUrl="http://www.ustc.edu.cn/" Target="_blank"
                            ToolTip="点击跳转到科大主页" NodeID="ustc">
                        </ext:TreeNode>
                    </ext:TreeNode>
                    <ext:TreeNode Text="黄山市" NodeID="Huangshan">
                    </ext:TreeNode>
                </ext:TreeNode>
            </ext:TreeNode>
        </Nodes>
    </ext:Tree>
    <br />
    <br />
    </form>
</body>
</html>
