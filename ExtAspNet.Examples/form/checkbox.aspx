<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkbox.aspx.cs" Inherits="ExtAspNet.Examples.form.checkbox" %>

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
            <ext:CheckBox ID="CheckBox1" ShowLabel="false" ReadOnly="true" runat="server" Text="自动回发的复选框" OnCheckedChanged="CheckBox1_CheckedChanged"
                Checked="True" AutoPostBack="True">
            </ext:CheckBox>
            <ext:Label ID="labResult" runat="server" ShowLabel="false">
            </ext:Label>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
