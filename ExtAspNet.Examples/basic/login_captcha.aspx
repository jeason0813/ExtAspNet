﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_captcha.aspx.cs"
    Inherits="ExtAspNet.Examples.basic.login_captcha" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    用户名：admin
    <br />
    密码：admin
    <br />
    <br />
    <ext:Window ID="Window1" runat="server" Title="登录表单" IsModal="false" EnableClose="false"
        WindowPosition="GoldenSection" Width="350px">
        <Items>
            <ext:SimpleForm ID="SimpleForm1" runat="server" ShowBorder="false" BodyPadding="10px"
                LabelWidth="60px" EnableBackgroundColor="true" ShowHeader="false">
                <Items>
                    <ext:TextBox ID="tbxUserName" Label="用户名" Required="true" runat="server">
                    </ext:TextBox>
                    <ext:TextBox ID="tbxPassword" Label="密码" TextMode="Password" Required="true" runat="server">
                    </ext:TextBox>
                    <ext:Image ID="imgCaptcha" runat="server" ShowEmptyLabel="true" ImageUrl="~/basic/captcha/captcha.ashx?w=231&h=30">
                    </ext:Image>
                    <ext:TextBox ID="tbxCaptcha" Label="验证码" Required="true" runat="server">
                    </ext:TextBox>
                    <ext:Button ID="btnLogin" Text="登录" Type="Submit" ValidateForms="SimpleForm1" ValidateTarget="Top"
                        runat="server" OnClick="btnLogin_Click">
                    </ext:Button>
                </Items>
            </ext:SimpleForm>
        </Items>
    </ext:Window>
    </form>
</body>
</html>
