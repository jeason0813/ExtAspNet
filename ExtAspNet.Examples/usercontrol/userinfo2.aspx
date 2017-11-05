<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo2.aspx.cs" Inherits="ExtAspNet.Examples.usercontrol.userinfo2" %>

<%@ Register Src="UserInfoControl.ascx" TagName="UserInfoControl" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server"></ext:PageManager>
    <ext:Panel runat="server" ID="Panel1" EnableBackgroundColor="true" Width="600px"
        Height="200px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
        BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板一（Layout=VBox, Panel->(UserControlConnector->UserInfoControl,Panel)）">
        <Items>
            <ext:UserControlConnector ID="UserControlConnector1" runat="server">
                <uc1:UserInfoControl ID="UserInfoControl1" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                    runat="server" />
            </ext:UserControlConnector>
            <ext:Panel runat="server" ID="Panel3" BodyPadding="5px" BoxFlex="1" BoxMargin="0"
                Title="页面/面板二">
                <Items>
                    <ext:Label runat="server" Text="胡斐今年22岁，住在驻马店。">
                    </ext:Label>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    <br />
    <ext:Panel runat="server" ID="Panel2" EnableBackgroundColor="true" Width="600px"
        Height="200px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
        BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板一">
        <Items>
            <ext:UserControlConnector ID="UserControlConnector2" runat="server">
                <uc1:UserInfoControl ID="UserInfoControl2" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                    runat="server" />
            </ext:UserControlConnector>
            <ext:UserControlConnector ID="UserControlConnector3" runat="server">
                <uc1:UserInfoControl ID="UserInfoControl3" Properties="{BoxMargin:'0',BoxFlex:1}" UserName="胡斐" UserAge="22" UserCountry="驻马店"
                    runat="server" />
            </ext:UserControlConnector>
        </Items>
    </ext:Panel>
    <br />
    <ext:Panel runat="server" ID="Panel4" EnableBackgroundColor="true" Width="600px"
        Height="200px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
        BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板二">
        <Items>
            <ext:UserControlConnector ID="UserControlConnector4" runat="server">
                <uc1:UserInfoControl ID="UserInfoControl4" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                    runat="server" />
                <uc1:UserInfoControl ID="UserInfoControl5" UserName="胡斐" UserAge="22" UserCountry="驻马店"
                    runat="server" />
            </ext:UserControlConnector>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
