<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="triggerbox_iframe.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.triggerbox_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" Title="在父页面弹出窗体" EnableBackgroundColor="true" BodyPadding="5px"
        runat="server" Width="600px" EnableCollapse="True">
        <Items>
            <ext:TriggerBox ID="TriggerBox1" EnableEdit="false" Text="这个触发器输入框是只读的" EnablePostBack="false"
                TriggerIcon="Search" Label="触发器" runat="server">
            </ext:TriggerBox>
            <ext:DatePicker ID="DatePicker1" Label="日期选择器" Required="true" runat="server">
            </ext:DatePicker>
            <ext:Button ID="Button1" runat="server" OnClick="Button1_Click" ValidateForms="SimpleForm1"
                TabIndex="3" Text="提交">
            </ext:Button>
            <ext:HiddenField ID="HiddenField1" runat="server">
            </ext:HiddenField>
        </Items>
    </ext:SimpleForm>
    <ext:Window ID="Window1" Title="编辑" Popup="false" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" OnClose="Window1_Close"
        IsModal="True" Width="650px" Height="450px">
    </ext:Window>
    <br />
    <ext:SimpleForm ID="SimpleForm2" Title="在本页面弹出窗体" EnableBackgroundColor="true" BodyPadding="5px"
        runat="server" Width="600px" EnableCollapse="True">
        <Items>
            <ext:HiddenField ID="HiddenField2" runat="server">
            </ext:HiddenField>
            <ext:TriggerBox ID="TriggerBox2" EnableEdit="false" Text="这个触发器输入框是只读的" EnablePostBack="false"
                TriggerIcon="Search" Label="触发器" runat="server">
            </ext:TriggerBox>
            <ext:Button ID="Button2" runat="server" OnClick="Button2_Click" TabIndex="3" Text="提交">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    <ext:Window ID="Window2" Title="编辑" Popup="false" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Self" OnClose="Window2_Close"
        IsModal="True" Width="650px" Height="450px">
    </ext:Window>
    <br />
    <ext:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </ext:Label>
    <br />
    </form>
</body>
</html>
