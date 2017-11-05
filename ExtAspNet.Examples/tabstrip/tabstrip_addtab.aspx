<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_addtab.aspx.cs"
    Inherits="ExtAspNet.Examples.tabstrip.tabstrip_addtab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:TabStrip ID="TabStrip1" Width="950px" Height="300px" ShowBorder="true" ActiveTabIndex="0"
        runat="server">
        <Tabs>
            <ext:Tab Title="ExtAspNet 论坛" EnableIFrame="true" IFrameUrl="http://bbs.extasp.net/">
            </ext:Tab>
        </Tabs>
    </ext:TabStrip>
    <br />
    <ext:Button ID="btnAddBaidu1" CssClass="inline" Text="添加标签 - Baidu1（客户端代码）"
        EnablePostBack="false" runat="server">
    </ext:Button>
    <ext:Button ID="btnAddCnblogs1" CssClass="inline" Text="添加标签 - Cnblogs1（客户端代码）"
        EnablePostBack="false" runat="server">
    </ext:Button>
    <ext:Button ID="btnRemoveBaidu1" CssClass="inline" Text="删除标签 - Baidu1（客户端代码）"
        EnablePostBack="false" runat="server">
    </ext:Button>
    <ext:Button ID="btnRemoveCnblogs1" CssClass="inline" Text="删除标签 - Cnblogs1（客户端代码）"
        EnablePostBack="false" runat="server">
    </ext:Button>
    <br />
    <br />
    <ext:Button ID="btnAddBaidu2" CssClass="inline" Text="添加标签 - Baidu2（服务端代码）"
        runat="server" OnClick="btnAddBaidu2_Click">
    </ext:Button>
    <ext:Button ID="btnAddCnblogs2" CssClass="inline" Text="添加标签 - Cnblogs2（服务端代码）"
        runat="server" OnClick="btnAddCnblogs2_Click">
    </ext:Button>
    <ext:Button ID="btnRemoveBaidu2" CssClass="inline" Text="删除标签 - Baidu2（服务端代码）"
        runat="server" OnClick="btnRemoveBaidu2_Click">
    </ext:Button>
    <ext:Button ID="btnRemoveCnblogs2" CssClass="inline" Text="删除标签 - Cnblogs2（服务端代码）"
        runat="server" OnClick="btnRemoveCnblogs2_Click">
    </ext:Button>
    <br />
    <br />
    <br />
    <br />
    注意：这些标签都是通过JavaScript脚本添加的，因此服务端无法取得这些动态添加的标签。
    <br />
    如果不使用Ajax回发页面，则所有动态添加的标签都会消失。
    <br />
    </form>
</body>
</html>
