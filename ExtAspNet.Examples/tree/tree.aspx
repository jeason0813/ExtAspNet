<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree.aspx.cs" Inherits="ExtAspNet.Examples.tree.tree" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="树控件（内联）" runat="server">
        <Nodes>
            <ext:TreeNode Text="中国" Expanded="true">
                <ext:TreeNode Text="河南省" Expanded="true">
                    <ext:TreeNode Text="驻马店市" NodeID="zhumadian">
                        <ext:TreeNode Text="遂平县" Leaf="false" NodeID="suiping">
                            <ext:TreeNode Text="槐树乡" Leaf="false" NodeID="huaishu">
                                <ext:TreeNode Text="陈庄村" NodeID="chenzhuang">
                                </ext:TreeNode>
                            </ext:TreeNode>
                        </ext:TreeNode>
                    </ext:TreeNode>
                    <ext:TreeNode Text="漯河市" NodeID="luohe" />
                </ext:TreeNode>
                <ext:TreeNode Text="安徽省" Expanded="true" NodeID="anhui">
                    <ext:TreeNode Text="合肥市" Expanded="true" NodeID="hefei">
                        <ext:TreeNode Text="金色池塘小区" NodeID="golden">
                        </ext:TreeNode>
                        <ext:TreeNode Text="中国科学技术大学" NodeID="ustc">
                        </ext:TreeNode>
                    </ext:TreeNode>
                </ext:TreeNode>
            </ext:TreeNode>
        </Nodes>
    </ext:Tree>
    </form>
</body>
</html>
