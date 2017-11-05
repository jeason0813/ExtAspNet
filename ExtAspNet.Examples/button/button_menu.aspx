<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_menu.aspx.cs" Inherits="ExtAspNet.Examples.button.button_menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Button ID="btnMenu" Text="中国科学技术大学" EnablePostBack="false" runat="server">
        <Menu>
            <ext:MenuHyperLink runat="server" Icon="TagGreen" Target="_blank" NavigateUrl="http://scms.ustc.edu.cn/"
                Text="化学与材料科学学院">
            </ext:MenuHyperLink>
            <ext:MenuHyperLink runat="server" Icon="TagBlue" Target="_blank" NavigateUrl="http://business.ustc.edu.cn/zh_CN/"
                Text="管理学院">
                <Menu>
                    <ext:MenuHyperLink runat="server" Icon="TagPink" Target="_blank" NavigateUrl="http://is.ustc.edu.cn/"
                        Text="工商管理系">
                    </ext:MenuHyperLink>
                    <ext:MenuHyperLink runat="server" Icon="TagPurple" Target="_blank" NavigateUrl="http://stat.ustc.edu.cn/"
                        Text="统计与金融系">
                    </ext:MenuHyperLink>
                </Menu>
            </ext:MenuHyperLink>
        </Menu>
    </ext:Button>
    <br />
    <br />
    </form>
</body>
</html>
