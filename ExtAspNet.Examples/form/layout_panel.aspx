<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layout_panel.aspx.cs" Inherits="ExtAspNet.Examples.form.layout_panel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Form ID="Form2" Width="600px" BodyPadding="5px" Title="表单" runat="server">
        <Rows>
            <ext:FormRow ColumnWidths="50% 60px 60px">
                <Items>
                    <ext:TextBox ID="TextBox1" Label="用户名" runat="server">
                    </ext:TextBox>
                    <ext:Button ID="Button1" Text="按钮一" CssClass="inline" runat="server">
                    </ext:Button>
                    <ext:Button ID="Button2" Text="按钮二" runat="server">
                    </ext:Button>
                </Items>
            </ext:FormRow>
        </Rows>
    </ext:Form>
    </form>
</body>
</html>
