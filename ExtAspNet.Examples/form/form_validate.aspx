<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_validate.aspx.cs"
    Inherits="ExtAspNet.Examples.form.form_validate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" runat="server" Width="500px" BodyPadding="5px" EnableBackgroundColor="true"
        Title="用户注册表单">
        <Items>
            <ext:TextBox ID="tbxUserName" runat="server" Label="用户名" MinLength="3" Required="True"
                ShowRedStar="True" Text="admin">
            </ext:TextBox>
            <ext:TextBox ID="tbxPassword" runat="server" Label="密码" Required="True" ShowRedStar="True"
                TextMode="Password">
            </ext:TextBox>
            <ext:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click"
                ValidateForms="SimpleForm1" ValidateTarget="Top">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
