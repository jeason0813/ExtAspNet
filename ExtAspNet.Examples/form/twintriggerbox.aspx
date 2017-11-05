<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="twintriggerbox.aspx.cs"
    Inherits="ExtAspNet.Examples.form.twintriggerbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="表单" Width="350px" ShowHeader="True">
        <Items>
            <ext:TwinTriggerBox ID="ttbxMyBox2" ShowLabel="false" OnTrigger1Click="ttbxMyBox2_Trigger1Click" OnTrigger2Click="ttbxMyBox2_Trigger2Click"
                Trigger1Icon="Clear" ShowTrigger1="False" EmptyText="搜索用户名" Trigger2Icon="Search"
                runat="server">
            </ext:TwinTriggerBox>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
