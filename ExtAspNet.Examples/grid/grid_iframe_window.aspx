<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="grid_iframe_window.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_iframe_window" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
    <ext:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
        BodyPadding="5px" EnableBackgroundColor="true">
        <Toolbars>
            <ext:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <ext:Button ID="btnClose" EnablePostBack="false" Text="关闭" runat="server" Icon="SystemClose">
                    </ext:Button>
                    <ext:Button ID="btnSaveContinue" Text="保存-关闭-回发父页面" runat="server" Icon="SystemSaveNew"
                        OnClick="btnSaveContinue_Click">
                    </ext:Button>
                    <ext:Button ID="btnSaveRefresh" Text="保存-关闭-刷新父页面" runat="server" Icon="SystemSaveNew"
                        OnClick="btnSaveRefresh_Click">
                    </ext:Button>
                    <ext:ToolbarFill ID="ToolbarFill1" runat="server">
                    </ext:ToolbarFill>
                    <%--<ext:Button ID="Button1" Text="弹出对话框" runat="server" OnClick="Button1_Click">
                    </ext:Button>--%>
                    <ext:ToolbarText ID="ToolbarText1" Text="提示一" runat="server">
                    </ext:ToolbarText>
                    <ext:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                    </ext:ToolbarSeparator>
                    <ext:ToolbarText ID="ToolbarText2" Text="提示二&nbsp;&nbsp;" runat="server">
                    </ext:ToolbarText>
                </Items>
            </ext:Toolbar>
        </Toolbars>
        <Items>
            <ext:Panel ID="Panel2" Layout="Fit" runat="server" ShowBorder="false" ShowHeader="false">
                <Items>
                    <ext:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false" EnableBackgroundColor="true"
                        AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                        <Items>
                            <ext:Label ID="Label2" Label="申请人" Text="sanshi" runat="server" />
                            <ext:Label ID="Label3" Label="电话" Text="0551-1234567" runat="server" />
                            <ext:NumberBox ID="NumberBox1" Label="数量" Required="true" ShowRedStar="true" runat="server" />
                            <ext:CheckBox ID="CheckBox1" runat="server" Text="" Label="是否审批">
                            </ext:CheckBox>
                            <ext:DatePicker ID="DatePicker1" Required="True" ShowRedStar="true" runat="server"
                                SelectedDate="2008-05-09" Label="申请日期" Text="2008-05-09">
                            </ext:DatePicker>
                            <ext:TextArea ID="TextArea2" Label="描述" runat="server" Required="True" ShowRedStar="true" />
                            <ext:HtmlEditor ID="HtmlEditor1" Label="详细描述" Height="150px" runat="server">
                            </ext:HtmlEditor>
                        </Items>
                    </ext:SimpleForm>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
