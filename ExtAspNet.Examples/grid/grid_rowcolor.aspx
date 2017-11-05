<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowcolor.aspx.cs"
    Inherits="ExtAspNet.Examples.data.grid_rowcolor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .highlight
        {
            background-color: lightgreen;
        }
        .highlight .x-grid3-col
        {
            background-image: none;
        }
        
        .x-grid3-row-selected .highlight
        {
            background-color: yellow;
        }
        .x-grid3-row-selected .highlight .x-grid3-col
        {
            background-image: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" Title="表格" ShowBorder="true" ShowHeader="true" Width="800px"
        runat="server" EnableCheckBoxSelect="true" DataKeyNames="Id,Name" OnRowDataBound="Grid1_RowDataBound"
        EnableRowNumber="True">
       <%-- <Toolbars>
            <ext:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <ext:Form EnableBackgroundColor="true" ShowBorder="false" LabelAlign="Right" ShowHeader="false" Width="600px" runat="server">
                        <Rows>
                            <ext:FormRow>
                                <Items>
                                    <ext:CheckBox ID="ckbEnd" Label="显示已结项目" runat="server" Text="显示已结项目" />
                                    <ext:RadioButton ID="rbtn1" runat="server" Text="单选按钮" />
                                </Items>
                            </ext:FormRow>
                        </Rows>
                    </ext:Form>
                    <ext:ToolbarFill ID="ToolbarFill2" runat="server" />
                    <ext:Button ID="btExp" Icon="Disk" Text="导 出" EnableAjax="false" DisableControlBeforePostBack="false"
                        runat="server" />
                </Items>
            </ext:Toolbar>
        </Toolbars>--%>
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
        </Columns>
    </ext:Grid>
    <br />
    注意：这个表格高亮选中了所有“入学年份”大于等于2006的数据行。
    <br />
    <br />
    <ext:Button ID="Button1" runat="server" Text="重新绑定表格" OnClick="Button1_Click">
    </ext:Button>
    <br />
    <br />
    <br />
    <br />
    <ext:HiddenField ID="highlightRows" runat="server">
    </ext:HiddenField>
    </form>
    <script type="text/javascript">
        var highlightRowsClientID = '<%= highlightRows.ClientID %>';
        var gridClientID = '<%= Grid1.ClientID %>';

        function highlightRows() {
            var highlightRows = X(highlightRowsClientID);
            var grid = X(gridClientID);

            grid.el.select('.x-grid3-row table.highlight').removeClass('highlight');

            Ext.each(highlightRows.getValue().split(','), function (item, index) {
                if (item !== '') {
                    var row = grid.getView().getRow(parseInt(item, 10));
                    Ext.get(row).first().addClass('highlight');
                }
            });

        }

        // 页面第一个加载完毕后执行的函数
        function onReady() {
            var grid = X(gridClientID);
            grid.addListener('viewready', function () {
                highlightRows();
            });
        }

        // 页面AJAX回发后执行的函数
        function onAjaxReady() {
            highlightRows();
        }
    </script>
</body>
</html>
