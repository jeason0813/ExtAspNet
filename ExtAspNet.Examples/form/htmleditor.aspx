<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="htmleditor.aspx.cs"
    Inherits="ExtAspNet.Examples.form.htmleditor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" BodyPadding="5px" EnableBackgroundColor="true" runat="server"
        Title="表单" Width="750px">
        <Items>
            <ext:HtmlEditor runat="server" Label="文本编辑器" ID="HtmlEditor1" Height="250px">
            </ext:HtmlEditor>
            <ext:TextArea ID="TextArea1" Label="多行文本框" runat="server" Height="150px">
            </ext:TextArea>
            <ext:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="获取 HTML 编辑器的内容"
                CssClass="inline">
            </ext:Button>
            <ext:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="设置 HTML 编辑器的内容">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
