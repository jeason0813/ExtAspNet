<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_iframe.aspx.cs"
    Inherits="ExtAspNet.Examples.tabstrip.tabstrip_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:TabStrip ID="TabStrip1" Width="750px" Height="450px" ShowBorder="true" ActiveTabIndex="0"
        runat="server" EnableTitleBackgroundColor="False">
        <Tabs>
            <ext:Tab ID="Tab1" BodyPadding="5px" Title="标签一" runat="server">
                <Items>
                    <ext:Label ID="Label1" Text="文本" runat="server">
                    </ext:Label>
                    <ext:ContentPanel ID="ContentPanel1" BodyPadding="5px" ShowBorder="true" ShowHeader="true"
                        Title="内容面板" runat="server">
                        这是内容面板中的内容。
                    </ext:ContentPanel>
                </Items>
            </ext:Tab>
            <ext:Tab ID="Tab2" EnableIFrame="true" BodyPadding="5px" IFrameUrl="../layout/window.aspx"
                Title="标签二 - IFrame - 延迟加载" runat="server">
            </ext:Tab>
            <ext:Tab ID="Tab3" EnableIFrame="true" BodyPadding="5px" IFrameUrl="../layout/panel.aspx"
                Title="标签三 - IFrame - 延迟加载" runat="server">
            </ext:Tab>
        </Tabs>
    </ext:TabStrip>
    </form>
</body>
</html>
