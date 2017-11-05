<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip.aspx.cs" Inherits="ExtAspNet.Examples.tabstrip.tabstrip" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .highlight
        {
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:TabStrip ID="TabStrip1" Width="750px" Height="300px" ShowBorder="true" TabPosition="Top"
        EnableTabCloseMenu="false" EnableTitleBackgroundColor="true" ActiveTabIndex="1"
        runat="server">
        <Tabs>
            <ext:Tab Title="标签一" EnableBackgroundColor="true" BodyPadding="5px" Layout="Fit"
                runat="server">
                <Items>
                    <ext:SimpleForm ID="SimpleForm1" ShowBorder="false" EnableBackgroundColor="true"
                        ShowHeader="false" Title="SimpleForm1" LabelWidth="120px" runat="server">
                        <Items>
                            <ext:Label ID="Label1" Label="文本" Text="sanshi" CssClass="highlight" runat="server" />
                            <ext:NumberBox ID="NumberBox1" Label="数字输入框" Required="true" ShowRedStar="true" runat="server" />
                            <ext:TextBox ID="TextBox1" Label="文本输入框" runat="server" Required="True" ShowRedStar="true">
                            </ext:TextBox>
                            <ext:DatePicker ID="DatePicker1" runat="server" SelectedDate="2008-05-09" Label="日期选择器"
                                Text="2008-05-09" Required="true" ShowRedStar="true">
                            </ext:DatePicker>
                            <ext:TextArea ID="TextArea2" Label="多行文本输入框" runat="server" Required="True" ShowRedStar="true" />
                        </Items>
                    </ext:SimpleForm>
                </Items>
            </ext:Tab>
            <ext:Tab Title="<span class='highlight'>标签二（高亮）</span>" BodyPadding="5px" EnableBackgroundColor="true"
                runat="server">
                <Items>
                    <ext:Button ID="Button1" Text="点击显示提示对话框" OnClick="Button1_Click" runat="server">
                    </ext:Button>
                </Items>
            </ext:Tab>
            <ext:Tab Title="标签三" BodyPadding="5px" EnableBackgroundColor="true" runat="server">
                <Items>
                    <ext:Label ID="Label3" CssClass="highlight" Text="第三个标签的内容（已经应用了高亮样式）" runat="server" />
                </Items>
            </ext:Tab>
        </Tabs>
    </ext:TabStrip>
    <br />
    <ext:Button ID="Button2" CssStyle="margin-right:5px;float:left;" ValidateForms="SimpleForm1"
        Text="验证第一个标签中的表单" runat="server">
    </ext:Button>
    <ext:Button ID="Button3" Text="打开下一个标签" OnClick="Button3_Click" runat="server">
    </ext:Button>
    </form>
</body>
</html>
