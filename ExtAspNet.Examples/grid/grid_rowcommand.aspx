<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowcommand.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_rowcommand" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" Title="表格" PageSize="3" ShowBorder="true" ShowHeader="true"
        AutoHeight="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name"
        Width="800px" OnRowCommand="Grid1_RowCommand" EnableRowNumber="True">
        <Columns>
            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <ext:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <ext:HyperLinkField HeaderText="所学专业" DataTooltipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}" DataNavigateUrlFieldsEncode="true"
                Target="_blank" ExpandUnusedSpace="True" />
            <ext:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></ext:ImageField>
            <ext:LinkButtonField HeaderText="&nbsp;" Width="60px" CommandName="Action1" Text="按钮 1" />
            <ext:LinkButtonField HeaderText="&nbsp;" Width="60px" ConfirmText="你确定要这么做么？" ConfirmTarget="Top"
                CommandName="Action2" Text="按钮 2" />
        </Columns>
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
