<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formitemclass.aspx.cs"
    Inherits="ExtAspNet.Examples.other.formitemclass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .red
        {
            color: Red;
            font-style: italic;
        }
        .blue
        {
            color: Blue;
            font-style: italic;
        }
        .blue label.x-form-item-label
        {
            color: Blue;
            font-weight: bold;
        }
        .red label.x-form-item-label
        {
            color: Red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="简单表单" runat="server">
        <Items>
            <ext:TextBox runat="server" Label="用户名" CssClass="red" FormItemClass="blue" EmptyText="输入用户名"
                ID="tbxUseraName">
            </ext:TextBox>
            <ext:TextBox runat="server" Label="密码" CssClass="red" FormItemClass="blue" TextMode="Password"
                ID="tbxPassword">
            </ext:TextBox>
            <ext:Button ID="btnSwitchClass" Text="切换样式" Type="Submit" runat="server" OnClick="btnSwitchClass_Click">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    <br />
    注意：如何分别改变表单标签的样式和输入框的样式。
    </form>
</body>
</html>
