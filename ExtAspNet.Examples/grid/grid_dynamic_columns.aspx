<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_dynamic_columns.aspx.cs"
    Inherits="ExtAspNet.Examples.data.grid_dynamic_columns" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" runat="server" Width="650px" EnableCheckBoxSelect="true" EnableRowNumber="true"
        Title="表格（动态创建的列）">
    </ext:Grid>
    <br />
    <ext:Button ID="Button1" runat="server" Text="选中了哪些行" OnClick="Button1_Click">
    </ext:Button>
    <br />
    <ext:Label ID="labResult" EncodeText="false" runat="server">
    </ext:Label>
    </form>
</body>
</html>
