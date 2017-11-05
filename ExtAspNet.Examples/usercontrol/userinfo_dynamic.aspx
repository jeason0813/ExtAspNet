<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo_dynamic.aspx.cs"
    Inherits="ExtAspNet.Examples.usercontrol.userinfo_dynamic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server"></ext:PageManager>
    <ext:ContentPanel runat="server" ID="Panel1" EnableBackgroundColor="true" Width="600px"
        Height="150px" Title="页面/面板一（ContentPanel->UserInfoControl）">
    </ext:ContentPanel>
    <br />
    <ext:Panel runat="server" ID="Panel2" EnableBackgroundColor="true" Width="600px"
        Height="150px" Title="页面/面板二（Panel->UserControlConnector->UserInfoControl）">
    </ext:Panel>
    <br />
    <ext:Panel runat="server" ID="Panel3" EnableBackgroundColor="true" Width="600px"
        Height="150px" Layout="Fit" Title="页面/面板三（Layout=Fit, Panel->UserControlConnector->UserInfoControl）">
    </ext:Panel>
    </form>
</body>
</html>
