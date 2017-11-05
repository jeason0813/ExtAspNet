<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_dynamic.aspx.cs" Inherits="ExtAspNet.Examples.form.form_dynamic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Form Width="550px" BodyPadding="5px" ID="Form2" EnableBackgroundColor="true"
        Title="表单" LabelWidth="120px" runat="server">
        <Rows>
            <ext:FormRow>
                <Items>
                    <ext:Label ID="Label1" runat="server" ShowLabel="false" Text="这是一个标签">
                    </ext:Label>
                </Items>
            </ext:FormRow>
        </Rows>
    </ext:Form>
    <br />
    注：用户名和性别两个控件是动态创建的。
    <br />
    <br />
    <ext:Button ID="Button1" runat="server" ValidateForms="Form2" ValidateTarget="Top"
        Text="验证表单并提交" OnClick="Button1_Click">
    </ext:Button>
    </form>
</body>
</html>
