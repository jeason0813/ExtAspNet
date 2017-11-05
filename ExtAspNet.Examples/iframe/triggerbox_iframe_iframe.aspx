<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="triggerbox_iframe_iframe.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.triggerbox_iframe_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server"></ext:PageManager>
    <ext:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
        BodyPadding="5px" EnableBackgroundColor="true">
        <Toolbars>
            <ext:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <ext:Button ID="btnClose" Text="关闭" EnablePostBack="false" runat="server" Icon="SystemClose">
                    </ext:Button>
                    <ext:Button ID="btnClosePostBack" OnClick="btnClosePostBack_Click" runat="server"
                        Text="关闭-回发父页面" Icon="SystemSaveNew">
                    </ext:Button>
                    <ext:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </ext:ToolbarSeparator>
                    <ext:Button ID="btnSelect" OnClick="btnSelect_Click" runat="server" Text="选择文本输入框的值"
                        Icon="SystemSaveNew">
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </Toolbars>
        <Items>
            <ext:SimpleForm ID="SimpleForm1" ShowBorder="true" ShowHeader="false" Title="SimpleForm"
                EnableBackgroundColor="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                <Items>
                    <ext:TextBox ID="TextBox1" Label="文本输入框" runat="server" Required="True">
                    </ext:TextBox>
                </Items>
            </ext:SimpleForm>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
