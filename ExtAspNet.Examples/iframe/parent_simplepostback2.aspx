<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_simplepostback2.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.parent_simplepostback2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    页面二：parent_simplepostback2.aspx
    <br />
    <br />
    <ext:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回发父页面">
    </ext:Button>
    <br />
    </form>
</body>
</html>
