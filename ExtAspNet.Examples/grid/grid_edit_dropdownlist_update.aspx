<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_dropdownlist_update.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_edit_dropdownlist_update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="800px"
        runat="server" DataKeyNames="Id,Name" OnRowDataBound="Grid1_RowDataBound">
        <Columns>
            <ext:TemplateField Width="80px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <ext:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <asp:DropDownList runat="server" ID="ddlGender">
                    </asp:DropDownList>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <ext:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <ext:TemplateField HeaderText="分组" Width="100px">
                <ItemTemplate>
                    <asp:TextBox ID="tbxGroupName" runat="server" Width="80px" TabIndex='<%# Container.DataItemIndex + 10 %>'
                        Text='<%# Eval("Group") %>'></asp:TextBox>
                </ItemTemplate>
            </ext:TemplateField>
        </Columns>
    </ext:Grid>
    <br />
    <ext:Button ID="Button2" runat="server" Text="重新绑定表格" OnClick="Button2_Click">
    </ext:Button>
    <br />
    <ext:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="将分组值全部加一">
    </ext:Button>
    <br />
    <ext:Label ID="labResult" EncodeText="false" runat="server">
    </ext:Label>
    <br />
    </form>
    <script type="text/javascript">
        var gridClientID = '<%= Grid1.ClientID %>';

        function registerSelectEvent() {
            var grid = X(gridClientID);
            grid.el.select('.x-grid-tpl input').on('click', function (evt, el) {
                el.select();
            });
        }

        function onReady() {
            var grid = X(gridClientID);

            grid.on('viewready', function () {
                registerSelectEvent();
            });
        }

        function onAjaxReady() {
            registerSelectEvent();
        }
    </script>
</body>
</html>
