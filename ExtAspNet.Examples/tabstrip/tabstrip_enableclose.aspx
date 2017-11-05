<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_enableclose.aspx.cs"
    Inherits="ExtAspNet.Examples.tabstrip.tabstrip_enableclose" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:TabStrip ID="TabStrip1" Width="750px" Height="300px" EnableTabCloseMenu="true"
        ShowBorder="true" ActiveTabIndex="1" runat="server">
        <Tabs>
            <ext:Tab ID="Tab1" Title="标签一" EnableClose="false" EnableBackgroundColor="true" BodyPadding="5px">
                <Items>
                    <ext:Label ID="Label5" Text="标签一中的文本" runat="server" />
                </Items>
            </ext:Tab>
            <ext:Tab ID="Tab2" Title="标签二" BodyPadding="5px" EnableClose="true" EnableBackgroundColor="true">
                <Items>
                    <ext:Label ID="Label4" Text="标签二中的文本" runat="server" />
                </Items>
            </ext:Tab>
            <ext:Tab ID="Tab3" Title="标签三" Hidden="true" BodyPadding="5px" EnableClose="true"
                EnableBackgroundColor="true">
                <Items>
                    <ext:Label ID="Label3" Text="标签三中的文本" runat="server" />
                </Items>
            </ext:Tab>
            <ext:Tab ID="Tab4" Title="标签四" BodyPadding="5px" EnableClose="true" EnableBackgroundColor="true">
                <Items>
                    <ext:Label ID="Label2" Text="标签四中的文本" runat="server" />
                </Items>
            </ext:Tab>
            <ext:Tab ID="Tab5" EnableClose="true" Title="标签五" BodyPadding="5px" EnableBackgroundColor="true">
                <Items>
                    <ext:Label ID="Label1" Text="标签五中的文本" runat="server" />
                </Items>
            </ext:Tab>
        </Tabs>
    </ext:TabStrip>
    <br />
    <br />
    <ext:Button ID="btnShowInClient" Text="显示标签三（客户端代码）" CssStyle="margin-right:5px;float:left;"
        EnablePostBack="false" runat="server">
    </ext:Button>
    <ext:Button ID="btnHideInClient" Text="隐藏标签三（客户端代码）" EnablePostBack="false" runat="server">
    </ext:Button>
    <br />
    <ext:Button ID="btnShowInServer" Text="显示标签三（服务端代码）" CssStyle="margin-right:5px;float:left;"
        runat="server" OnClick="btnShowInServer_Click">
    </ext:Button>
    <ext:Button ID="btnHideInServer" Text="隐藏标签三（服务端代码）" runat="server" OnClick="btnHideInServer_Click">
    </ext:Button>
    <br />
    <br />
    <br />
    </form>
</body>
</html>
