<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="ExtAspNet.Examples.form.fileupload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .result img
        {
            border: 1px solid #CCCCCC;
            max-width: 550px;
            padding: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="表单" Width="350px" ShowHeader="True">
        <Items>
            <ext:TextBox runat="server" Label="用户名" ID="tbxUseraName" Required="true" ShowRedStar="true">
            </ext:TextBox>
            <ext:FileUpload runat="server" ID="filePhoto" EmptyText="请选择一张照片" Label="个人头像" Required="true"
                ShowRedStar="true">
            </ext:FileUpload>
            <ext:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" ValidateForms="SimpleForm1"
                Text="提交">
            </ext:Button>
        </Items>
    </ext:SimpleForm>
    <ext:Label ID="labResult" CssClass="result" EncodeText="false" runat="server">
    </ext:Label>
    </form>
</body>
</html>
