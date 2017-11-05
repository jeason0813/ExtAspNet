<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_datatable.aspx.cs"
    Inherits="ExtAspNet.Examples.dropdownlist.dropdownlist_datatable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:DropDownList runat="server" ID="DropDownList1" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </ext:DropDownList>
    <br />
    <ext:Button ID="btnSelectItem6" Text="选中“选项 6”" runat="server" OnClick="btnSelectItem6_Click">
    </ext:Button>
    <br />
    <ext:Label runat="server" ID="labResult">
    </ext:Label>
    <br />
    <br />
    注：这个下拉列表在选择项改变时自动回发。
    </form>
</body>
</html>
