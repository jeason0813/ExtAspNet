<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_complex_property.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_complex_property" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" Title="表格" PageSize="3" ShowBorder="true" AutoHeight="true"
        Width="800px" ShowHeader="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Year"
        EnableRowNumber="True">
        <Columns>
            <ext:BoundField DataField="MyText" SortField="MyText" DataFormatString="{0}" HeaderText="姓名" />
            <ext:BoundField Width="60px" DataField="Year" HeaderText="入学年份" />
            <ext:CheckBoxField Width="60px" DataField="MyCheckBox" HeaderText="是否在校" />
            <ext:TemplateField HeaderText="是否在校（模板列）">
                <ItemTemplate>
                    <%-- Container.DataItem should be System.Data.DataRowView or Custom Class --%>
                    <%-- <%# DataBinder.Eval(Container.DataItem, "MyText") %> --%>
                    <%# GetInSchool(Eval("MyCheckBox")) %>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField ExpandUnusedSpace="True" DataField="Info.UserName" DataFormatString="{0}"
                HeaderText="老师（二级属性）" />
        </Columns>
    </ext:Grid>
    </form>
</body>
</html>
