<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_iframe.aspx.cs" Inherits="ExtAspNet.Examples.grid.grid_iframe" %>

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
        PageSize="3" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name"
        Width="800px" EnableRowNumber="True">
        <Toolbars>
            <ext:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <ext:Button ID="btnNew" Text="新增数据" Icon="Add" EnablePostBack="false" runat="server">
                    </ext:Button>
                    <ext:Button ID="btnDelete" Text="删除选中项" Icon="Delete" OnClick="btnDelete_Click" runat="server">
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </Toolbars>
        <Columns>
            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <ext:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
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
            <ext:WindowField ColumnID="myWindowField" Width="60px" WindowID="Window1" HeaderText="窗口列"
                Icon="Pencil" ToolTip="编辑" DataTextFormatString="{0}" DataIFrameUrlFields="Id"
                DataIFrameUrlFormatString="grid_iframe_window.aspx?id={0}" DataWindowTitleField="Name"
                DataWindowTitleFormatString="编辑 - {0}" />
            <ext:TemplateField HeaderText="模板列" Width="60px">
                <ItemTemplate>
                    <a href="javascript:<%# GetEditUrl(Eval("Id"), Eval("Name")) %>">编辑</a>
                </ItemTemplate>
            </ext:TemplateField>
        </Columns>
    </ext:Grid>
    <ext:Window ID="Window1" Title="编辑" Popup="false" EnableIFrame="true" runat="server"
        CloseAction="HidePostBack" EnableConfirmOnClose="true" IFrameUrl="about:blank"
        EnableMaximize="true" EnableResize="true" OnClose="Window1_Close" Target="Top"
        IsModal="True" Width="750px" Height="450px">
    </ext:Window>
    </form>
</body>
</html>
