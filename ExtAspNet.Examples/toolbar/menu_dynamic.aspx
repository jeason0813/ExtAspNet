<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu_dynamic.aspx.cs" Inherits="ExtAspNet.Examples.toolbar.menu_dynamic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Panel ShowBorder="true" BodyPadding="5px" Height="300px" Width="450px" Title="面板"
        runat="server">
        <Toolbars>
            <ext:Toolbar runat="server">
                <Items>
                    <ext:ToolbarText runat="server" Text="内联项：">
                    </ext:ToolbarText>
                    <ext:ToolbarSeparator runat="server">
                    </ext:ToolbarSeparator>
                    <ext:Button EnablePostBack="false" Text="中国科学技术大学" runat="server">
                        <Menu runat="server">
                            <ext:MenuHyperLink ID="MenuHyperLink1" runat="server" Target="_blank" NavigateUrl="http://scms.ustc.edu.cn/"
                                Text="化学与材料科学学院">
                            </ext:MenuHyperLink>
                            <ext:MenuHyperLink ID="MenuHyperLink2" runat="server" Target="_blank" NavigateUrl="http://business.ustc.edu.cn/zh_CN/"
                                Text="管理学院">
                                <Menu runat="server">
                                    <ext:MenuHyperLink ID="MenuHyperLink3" runat="server" Target="_blank" NavigateUrl="http://is.ustc.edu.cn/"
                                        Text="工商管理系">
                                    </ext:MenuHyperLink>
                                    <ext:MenuHyperLink ID="MenuHyperLink4" runat="server" Target="_blank" NavigateUrl="http://stat.ustc.edu.cn/"
                                        Text="统计与金融系">
                                    </ext:MenuHyperLink>
                                </Menu>
                            </ext:MenuHyperLink>
                        </Menu>
                    </ext:Button>
                </Items>
            </ext:Toolbar>
            <ext:Toolbar ID="Toolbar1" Position="Bottom" runat="server">
                <Items>
                    <ext:ToolbarText runat="server" Text="动态加载项：">
                    </ext:ToolbarText>
                    <ext:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </ext:ToolbarSeparator>
                </Items>
            </ext:Toolbar>
        </Toolbars>
    </ext:Panel>
    </form>
</body>
</html>
