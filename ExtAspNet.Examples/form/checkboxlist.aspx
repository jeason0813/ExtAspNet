<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlist.aspx.cs" Inherits="ExtAspNet.Examples.form.checkboxlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" Width="700px" runat="server" LabelWidth="160px"
        EnableBackgroundColor="true" BodyPadding="5px" ShowBorder="True" ShowHeader="True"
        Title="简单表单">
        <Items>
            <ext:CheckBoxList ID="CheckBoxList1" Label="列表一" runat="server">
                <ext:CheckItem Text="可选项 1" Value="value1" />
                <ext:CheckItem Text="可选项 2" Value="value2" Selected="true" />
                <ext:CheckItem Text="可选项 3" Value="value3" Selected="true" />
            </ext:CheckBoxList>
            <ext:Button ID="btnServerSetSelectedValue" CssClass="inline" Text="选中上面列表中的第一项和第三项" OnClick="btnServerSetSelectedValue_Click"
                runat="server">
            </ext:Button>
            <ext:Button ID="btnServerGetSelectedValue" CssClass="inline" Text="获取上面列表的选中项" OnClick="btnServerGetSelectedValue_Click"
                runat="server">
            </ext:Button>
            <ext:Button ID="btnClientGetSelectedValue" Text="获取上面列表的选中项（JavaScript 脚本）" EnablePostBack="false"
                OnClientClick="alertSelectedValue();" runat="server">
            </ext:Button>
            <ext:Label runat="server" Text="&nbsp;">
            </ext:Label>
            <ext:CheckBoxList ID="CheckBoxList2" Label="列表二（一列）" ColumnNumber="1" runat="server">
            </ext:CheckBoxList>
            <ext:Label ID="Label1" runat="server" Text="&nbsp;">
            </ext:Label>
            <ext:CheckBoxList ID="rblAutoPostBack" AutoPostBack="true" OnSelectedIndexChanged="rblAutoPostBack_SelectedIndexChanged"
                Label="列表三（自动回发）" ColumnNumber="3" runat="server" ShowRedStar="true" Required="true">
                <ext:CheckItem Text="可选项 1" Value="value1" />
                <ext:CheckItem Text="可选项 2" Value="value2" />
                <ext:CheckItem Text="可选项 3" Value="value3" />
                <ext:CheckItem Text="可选项 4" Value="value4" />
                <ext:CheckItem Text="可选项 5" Value="value5" />
                <ext:CheckItem Text="可选项 6" Value="value6" />
                <ext:CheckItem Text="可选项 7" Value="value7" />
                <ext:CheckItem Text="可选项 8" Value="value8" />
            </ext:CheckBoxList>
            <ext:Label ID="Label2" runat="server" Text="&nbsp;">
            </ext:Label>
            <ext:CheckBoxList ID="rblVertical" Label="列表四（竖排）" ColumnNumber="3" ColumnVertical="true"
                runat="server" ShowRedStar="true" Required="true">
                <ext:CheckItem Text="可选项 1" Value="value1" />
                <ext:CheckItem Text="可选项 2" Value="value2" />
                <ext:CheckItem Text="可选项 3" Value="value3" />
                <ext:CheckItem Text="可选项 4" Value="value4" />
                <ext:CheckItem Text="可选项 5" Value="value5" />
                <ext:CheckItem Text="可选项 6" Value="value6" />
                <ext:CheckItem Text="可选项 7" Value="value7" />
                <ext:CheckItem Text="可选项 8" Value="value8" />
            </ext:CheckBoxList>
            <ext:Button runat="server" ID="btnSubmit" ValidateForms="SimpleForm1" Text="提交表单"
                OnClick="btnSubmit_Click">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    </form>
    <script type="text/javascript">

        function alertSelectedValue() {
            var list2 = Ext.getCmp('<%= CheckBoxList1.ClientID %>');
            var selectedCheckboxs = list2.getValue(), selectedValues, i;

            if (selectedCheckboxs.length) {
                selectedValues = [];
                for (i = 0; i < selectedCheckboxs.length; i++) {
                    selectedValues.push(selectedCheckboxs[i].getRawValue());
                }
                top.X.util.alert("列表一选中项的值：" + selectedValues.join(','));
            } else {
                top.X.util.alert("列表一没有选中项！");
            }
        }
    
    </script>
</body>
</html>
