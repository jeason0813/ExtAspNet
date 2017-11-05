<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="triggerbox.aspx.cs" Inherits="ExtAspNet.Examples.form.triggerbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="表单" Width="350px" ShowHeader="True">
        <Items>
            <ext:TriggerBox ID="tbxMyBox1" ShowLabel="false" Readonly="false" TriggerIcon="Search"
                OnTriggerClick="tbxMyBox1_TriggerClick" EmptyText="打开弹出窗口" runat="server">
            </ext:TriggerBox>
        </Items>
    </ext:SimpleForm>
    <ext:Window ID="Window1" Title="弹出窗口" BodyPadding="10px" IsModal="true" Hidden="true"
        EnableMaximize="true" EnableResize="true" Target="Top" Width="450px" Height="300px"
        runat="server">
        <Items>
            <ext:Button ID="btnCloseWindow" Text="关闭当前窗口" OnClick="btnCloseWindow_Click" runat="server">
            </ext:Button>
        </Items>
    </ext:Window>
    </form>
</body>
</html>
