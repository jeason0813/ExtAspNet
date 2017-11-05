<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passvalue_iframe.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.passvalue_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" Title="表单" EnableBackgroundColor="true" BodyPadding="5px"
        runat="server" Width="500px" EnableCollapse="True">
        <Items>
            <ext:TextBox Label="你所在的省份" ID="TextBox1" runat="server">
            </ext:TextBox>
            <ext:Button ID="Button1" EnablePostBack="false" runat="server" Text="从列表中选择">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    <ext:Window ID="Window1" Title="编辑" Popup="false" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" OnClose="Window1_Close"
        IsModal="True" Width="750px" Height="450px">
    </ext:Window>
    <ext:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </ext:Label>
    <br />
    </form>
</body>
</html>
