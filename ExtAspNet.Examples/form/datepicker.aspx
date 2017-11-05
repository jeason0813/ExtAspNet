<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datepicker.aspx.cs" Inherits="ExtAspNet.Examples.form.datepicker" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="简单表单" runat="server">
        <Items>
            <ext:DatePicker runat="server" Required="true" Label="开始日期" EmptyText="请选择开始日期"
                ID="DatePicker1" ShowRedStar="True">
            </ext:DatePicker>
            <ext:DatePicker ID="DatePicker2" Required="true" Readonly="false" CompareControl="DatePicker1" DateFormatString="yyyy-MM-dd"
                CompareOperator="GreaterThanEqual" CompareMessage="结束日期应该大于开始日期" Label="结束日期"
                runat="server" ShowRedStar="True">
            </ext:DatePicker>
            <ext:Button ID="btnSubmit" runat="server" ValidateForms="SimpleForm1" Text="提交表单"
                OnClick="btnSubmit_Click">
            </ext:Button>
            <ext:Label ID="labResult" ShowLabel="false" runat="server">
            </ext:Label>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
