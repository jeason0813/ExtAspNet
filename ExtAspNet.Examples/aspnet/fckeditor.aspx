<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fckeditor.aspx.cs" ValidateRequest="false"
    Inherits="ExtAspNet.Examples.aspnet.fckeditor2" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AjaxAspnetControls="FCKeditor1" runat="server" />
    <ext:ContentPanel ID="ContentPanel1" runat="server" Width="800px" BodyPadding="5px"
        EnableBackgroundColor="true" ShowBorder="true" ShowHeader="true" Title="内容面板">
        <FCKeditorV2:FCKeditor ID="FCKeditor1" BasePath="../fckeditor/" runat="server">
        </FCKeditorV2:FCKeditor>
    </ext:ContentPanel>
    <br />
    <br />
    <ext:Button ID="Button2" runat="server" CssClass="inline" Text="设置 FCKEditor 的值"
        OnClick="Button2_Click">
    </ext:Button>
    <ext:Button ID="Button1" runat="server" Text="获取 FCKEditor 的值" OnClick="Button1_Click">
    </ext:Button>
    </form>
</body>
</html>
