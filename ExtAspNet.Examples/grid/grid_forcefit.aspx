<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_forcefit.aspx.cs" Inherits="ExtAspNet.Examples.grid.grid_forcefit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AutoSizePanelID="Grid1" runat="server" />
    <ext:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格（ForceFitAllTime=true）(改变页面大小来观察每列宽度的变化)" Width="900px"
        ForceFitAllTime="true" runat="server" DataKeyNames="Guid">
        <Columns>
            <ext:TemplateField Width="50px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <ext:TemplateField Width="50px" HeaderText="性别">
                <ItemTemplate>
                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                    <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="50px" DataField="EntranceYear" HeaderText="入学年份" />
            <ext:CheckBoxField Width="50px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <ext:HyperLinkField Width="200px" HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" />
            <ext:ImageField Width="50px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></ext:ImageField>
            <ext:BoundField Width="100px" DataField="LogTime" DataFormatString="{0:yy-MM-dd}"
                HeaderText="注册日期" />
        </Columns>
    </ext:Grid>
    <br />
    <br />
    </form>
</body>
</html>
