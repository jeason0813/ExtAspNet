<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textarea_autogrow.aspx.cs"
    Inherits="ExtAspNet.Examples.form.textarea_autogrow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:TextArea runat="server" ID="TextArea1" EmptyText="文本框的高度会自动扩展" Height="50"
        Width="200" AutoGrowHeight="true" AutoGrowHeightMin="50" AutoGrowHeightMax="200">
    </ext:TextArea>
    <br />
    <ext:Label ID="labResult" runat="server">
    </ext:Label>
    </form>
</body>
</html>
