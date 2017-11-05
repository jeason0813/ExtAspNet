<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_simulate_tree.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_simulate_tree" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" Title="表格" ShowBorder="true" ShowHeader="true" AutoHeight="true"
        runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name" Width="800px"
        EnableRowNumber="True">
        <Columns>
            <ext:BoundField DataField="Name" DataSimulateTreeLevelField="TreeLevel" DataFormatString="{0}"
                HeaderText="地区" ExpandUnusedSpace="True" />
            <ext:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></ext:ImageField>
        </Columns>
    </ext:Grid>
    </form>
</body>
</html>
