<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiobutton.aspx.cs" Inherits="ExtAspNet.Examples.form.radiobutton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" Width="700px" runat="server" Title="简单表单" EnableBackgroundColor="true"
        BodyPadding="5px" ShowBorder="True" ShowHeader="True">
        <Items>
            <ext:RadioButton ID="rbtnSingleRadio" Label="单选框" Text="可选项" runat="server">
            </ext:RadioButton>
            <ext:Button ID="btnSelectSingleRadio" Text="选择/反选上面的单选框" OnClick="btnSelectSingleRadio_Click"
                runat="server">
            </ext:Button>
            <ext:Label runat="server" Label="&nbsp;" LabelSeparator="">
            </ext:Label>
            <ext:RadioButton ID="rbtnFirst" Label="单选框（分组）" Checked="true" GroupName="MyRadioGroup1"
                Text="可选项 1" runat="server">
            </ext:RadioButton>
            <%-- 设置Label="&nbsp;" LabelSeparator=""是为了让三个单选按钮的高度一样  --%>
            <ext:RadioButton ID="rbtnSecond" GroupName="MyRadioGroup1"  Label="&nbsp;" LabelSeparator="" Text="可选项 2" runat="server">
            </ext:RadioButton>
            <ext:RadioButton ID="rbtnThird" GroupName="MyRadioGroup1" Label="&nbsp;" LabelSeparator="" Text="可选项 3" runat="server">
            </ext:RadioButton>
            <ext:Button ID="btnSelectSecondRadio" Text="选中分组单选框中的下一个" OnClick="btnSelectSecondRadio_Click"
                runat="server">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
