<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_compare.aspx.cs" Inherits="ExtAspNet.Examples.form.form_compare" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="550px" LabelWidth="180px"
        runat="server" EnableBackgroundColor="true" ShowBorder="True" ShowHeader="True"
        Title="简单表单">
        <Items>
            <ext:DatePicker ID="DatePicker1" Label="开始日期" Required="true" runat="server">
            </ext:DatePicker>
            <ext:DatePicker ID="DatePicker2" Label="结束日期（大于开始日期）" Required="true" CompareControl="DatePicker1"
                CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期！" runat="server">
            </ext:DatePicker>
            <ext:Label Text="&nbsp;" runat="server">
            </ext:Label>
            <ext:TextBox ID="TextBox1" Required="true" Label="文本框 1" runat="server">
            </ext:TextBox>
            <ext:TextBox ID="TextBox2" Required="true" Label="文本框 2（等于文本框 1）" CompareControl="TextBox1"
                CompareOperator="Equal" CompareMessage="文本框 2 应该等于文本框 1！" runat="server">
            </ext:TextBox>
            <ext:Label Text="&nbsp;" runat="server">
            </ext:Label>
            <ext:NumberBox ID="NumberBox1" Required="true" Label="数字框 1" runat="server">
            </ext:NumberBox>
            <ext:NumberBox ID="NumberBox2" Required="true" Label="数字框 2（大于等于数字框 1）" CompareControl="NumberBox1"
                CompareOperator="GreaterThanEqual" CompareMessage="数字框 2 应该大于等于数字框 1!" runat="server">
            </ext:NumberBox>
            <ext:Label Text="&nbsp;" runat="server">
            </ext:Label>
            <ext:Label ID="Label1" runat="server" Label="标签 1" Text="88">
            </ext:Label>
            <ext:TextBox ID="TextBox3" Required="true" Label="文本框 3（大于等于标签 1）" CompareControl="Label1"
                CompareOperator="GreaterThanEqual" CompareType="Int" CompareMessage="文本框 3 应该大于等于标签 1！"
                runat="server">
            </ext:TextBox>
            <ext:Label runat="server">
            </ext:Label>
            <ext:Button ID="btnSubmit" ValidateForms="SimpleForm1" Text="提交表单" runat="server">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
