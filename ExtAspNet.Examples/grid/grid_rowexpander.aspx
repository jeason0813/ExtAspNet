<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowexpander.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_rowexpander" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .x-grid3-row-body .expander
        {
            padding: 5px;
        }
        .x-grid3-row-body .expander p
        {
            padding: 5px;
        }
        .x-grid3-row-body .expander strong
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="800px"
        runat="server" DataKeyNames="Id,Name">
        <Columns>
            <ext:TemplateField RenderAsRowExpander="true">
                <ItemTemplate>
                    <div class="expander">
                        <p>
                            <strong>姓名：</strong><%# Eval("Name") %></p>
                        <p>
                            <strong>简介：</strong><%# Eval("Desc") %></p>
                    </div>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <ext:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <ext:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <ext:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
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
