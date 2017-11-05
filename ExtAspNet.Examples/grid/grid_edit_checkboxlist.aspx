<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_checkboxlist.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_edit_checkboxlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .x-grid-tpl .hobby input
        {
            vertical-align: middle;
        }
        .x-grid-tpl .hobby label
        {
            margin-left: 5px;
            margin-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="850px"
        runat="server" DataKeyNames="Id,Name" OnRowDataBound="Grid1_RowDataBound">
        <Columns>
            <ext:TemplateField Width="50px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <ext:TemplateField Width="50px" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <ext:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <ext:TemplateField Width="300px" HeaderText="爱好">
                <ItemTemplate>
                    <asp:CheckBoxList runat="server" CssClass="hobby" RepeatLayout="Flow" RepeatDirection="Horizontal"
                        ID="cblHobby">
                        <asp:ListItem Text="读书" Value="reading"></asp:ListItem>
                        <asp:ListItem Text="篮球" Value="basketball"></asp:ListItem>
                        <asp:ListItem Text="旅游" Value="travel"></asp:ListItem>
                        <asp:ListItem Text="电影" Value="movie"></asp:ListItem>
                        <asp:ListItem Text="音乐" Value="music"></asp:ListItem>
                    </asp:CheckBoxList>
                </ItemTemplate>
            </ext:TemplateField>
        </Columns>
    </ext:Grid>
    <br />
    <ext:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="获取用户输入的爱好">
    </ext:Button>
    <br />
    <ext:Label ID="labResult" EncodeText="false" runat="server">
    </ext:Label>
    <br />
    </form>
</body>
</html>
