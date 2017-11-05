<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_checkboxfield_autopostback.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_checkboxfield_autopostback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" Title="表格" Width="800px" ShowBorder="true" ShowHeader="true"
        AutoHeight="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name"
        OnRowCommand="Grid1_RowCommand" EnableRowNumber="True">
        <Columns>
            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <ext:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <ext:CheckBoxField ColumnID="CheckBoxField2" Width="80px" RenderAsStaticField="false"
                AutoPostBack="true" CommandName="CheckBox1" DataField="AtSchool" HeaderText="是否在校" />
            <ext:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <ext:LinkButtonField HeaderText="&nbsp;" Width="50px" CommandName="Action1" Text="按钮 1" />
            <ext:LinkButtonField HeaderText="&nbsp;" Width="50px" CommandName="Action2" Text="按钮 2" />
        </Columns>
    </ext:Grid>
    <br />
    <ext:Button ID="Button1" runat="server" Text="选中行复选框的状态" OnClick="Button1_Click">
    </ext:Button>
    <br />
    <ext:Label ID="labResult" EncodeText="false" runat="server">
    </ext:Label>
    </form>
</body>
</html>
