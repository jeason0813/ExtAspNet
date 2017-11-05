<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspnet.aspx.cs" Inherits="ExtAspNet.Examples.aspnet.aspnet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AjaxAspnetControls="aspBox,aspButton" runat="server" />
    <ext:ContentPanel ID="ContentPanel1" runat="server" Width="500px" BodyPadding="5px"
        EnableBackgroundColor="true" ShowBorder="true" ShowHeader="true" Title="内容面板">
        <ext:TextBox runat="server" Width="300px" ID="extBox"></ext:TextBox>
        <br />
        <br />
        <asp:TextBox runat="server" Width="300px" ID="aspBox"></asp:TextBox>
        <br />
        <br />
        <ext:Button ID="extButton" runat="server" CssClass="inline" Text="ExtAsp.Net 按钮" OnClick="extButton_Click">
        </ext:Button>
        <asp:Button ID="aspButton" Text="Asp.Net 按钮" runat="server" OnClick="aspButton_Click" />
    </ext:ContentPanel>
    <br />
    </form>
</body>
</html>
