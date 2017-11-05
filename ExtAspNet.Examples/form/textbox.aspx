<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textbox.aspx.cs"
    Inherits="ExtAspNet.Examples.form.textbox" %>

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
        ShowBorder="True" Title="登录表单" Width="350px" ShowHeader="True">
        <Items>
            <ext:TextBox runat="server" Label="用户名" ID="tbxUseraName">
            </ext:TextBox>
            <ext:TextBox runat="server" ID="tbxPassword" Label="密码" TextMode="Password">
            </ext:TextBox>
            <ext:Button ID="btnSubmit" CssClass="inline" runat="server" OnClick="btnSubmit_Click"
                Text="登录">
            </ext:Button>
            <ext:Button ID="Button1" runat="server" EnablePostBack="false" Type="Reset" Text="重置">
            </ext:Button>
            <ext:Label ID="labResult" ShowLabel="false" runat="server">
            </ext:Label>
        </Items>
    </ext:SimpleForm>
    <br />
    </form>
</body>
</html>
