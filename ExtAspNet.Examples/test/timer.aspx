<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timer.aspx.cs" Inherits="ExtAspNet.Examples.timer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Label runat="server" ID="Label1">
    </ext:Label>
    <ext:SimpleForm ID="SimpleForm1" runat="server">
        <Items>
            <ext:RadioButtonList ID="rblU_Sex" Label="性别" runat="server" ShowRedStar="true" Width="100">
                <ext:RadioItem Text="男" Value="1" Selected="true" />
                <ext:RadioItem Text="女" Value="2" />
            </ext:RadioButtonList>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
