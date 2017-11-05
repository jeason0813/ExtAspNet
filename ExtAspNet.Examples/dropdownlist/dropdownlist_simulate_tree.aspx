<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_simulate_tree.aspx.cs"
    Inherits="ExtAspNet.Examples.data.dropdownlist_simulate_tree" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:DropDownList Label="DropDownList" AutoPostBack="false" Required="true" EnableSimulateTree="true"
        ShowRedStar="true" runat="server" ID="ddlBox">
    </ext:DropDownList>
    <br />
    <ext:Button ID="Button1" Text="获取选中项" runat="server" OnClick="Button1_Click">
    </ext:Button>
    <br />
    <ext:Label runat="server" ID="labResult">
    </ext:Label>
    <br />
    <br />
    </form>
</body>
</html>
