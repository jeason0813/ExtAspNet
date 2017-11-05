<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe_window2.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.iframe_iframe_window2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AutoSizePanelID="formPanel" runat="server" />
    <ext:Panel ID="formPanel" ShowBorder="false" ShowHeader="false" Layout="Fit" BodyPadding="5px"
        EnableBackgroundColor="true" runat="server">
        <Toolbars>
            <ext:Toolbar>
                <Items>
                    <ext:Button ID="btnConfirmFormClose" Text="保存-关闭-回发父页面" EnablePostBack="false" runat="server">
                    </ext:Button>
                    <ext:Button ID="btnClosePostBack" Text="关闭-回发父页面" EnablePostBack="false" runat="server">
                    </ext:Button>
                    <ext:Button ID="btnPostBackClosePostBack" Text="关闭-回发父页面" OnClick="btnPostBackClosePostBack_Click"
                        runat="server">
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </Toolbars>
        <Items>
            <ext:SimpleForm ID="SimpleForm1" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                <Items>
                    <ext:Label ID="Label2" Label="文本" Text="sanshi" runat="server" />
                    <ext:NumberBox ID="NumberBox1" Label="数字输入框" Required="true" ShowRedStar="true" runat="server" />
                    <ext:CheckBox ID="CheckBox1" runat="server" Label="复选框">
                    </ext:CheckBox>
                    <ext:TextBox ID="TextBox1" Label="文本输入框" runat="server" ShowRedStar="true" Required="True">
                    </ext:TextBox>
                    <ext:DatePicker ID="DatePicker1" runat="server" SelectedDate="2008-05-09" Label="日期选择器"
                        Text="2008-05-09">
                    </ext:DatePicker>
                </Items>
            </ext:SimpleForm>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
