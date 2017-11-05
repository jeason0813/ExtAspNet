<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textbox_autopostback.aspx.cs"
    Inherits="ExtAspNet.Examples.form.textbox_autopostback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" LabelWidth="120px"
        EnableBackgroundColor="true" ShowBorder="True" Title="简单表单" Width="350px" ShowHeader="True">
        <Items>
            <ext:TextBox runat="server" ID="TextBox1" Label="自动回发的文本框" EmptyText="文本框值改变则自动回发"
                AutoPostBack="true" OnTextChanged="TextBox1_TextChanged">
            </ext:TextBox>
            <ext:TextBox ID="TextBox2" runat="server" Label="文本框" Text="">
            </ext:TextBox>
            <ext:Button runat="server" Text="提交">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    <br />
    <ext:Label ID="labResult" runat="server">
    </ext:Label>
    </form>
</body>
</html>
