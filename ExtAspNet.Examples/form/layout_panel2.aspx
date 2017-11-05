<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layout_panel2.aspx.cs"
    Inherits="ExtAspNet.Examples.form.layout_panel2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .mright
        {
            margin-right: 5px;
        }
        .datecontainer .x-form-field-trigger-wrap
        {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm Width="600px" BodyPadding="5px" LabelAlign="Right" Title="表单" runat="server">
        <Items>
            <ext:Panel ID="Panel2" ShowHeader="false" CssClass="x-form-item" ShowBorder="false"
                Layout="Column" runat="server">
                <Items>
                    <ext:Label ID="Label2" Width="80px" runat="server" CssClass="inline" ShowLabel="false"
                        Text="用户名：">
                    </ext:Label>
                    <ext:TextBox ID="TextBox2" Label="用户名" CssClass="mright" Required="true" runat="server">
                    </ext:TextBox>
                    <ext:Button ID="Button3" Text="按钮一" CssClass="mright" runat="server">
                    </ext:Button>
                    <ext:Button ID="Button4" Text="按钮二" runat="server">
                    </ext:Button>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel1" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <ext:Label ID="Label1" runat="server" Width="80px" CssClass="inline" ShowLabel="false"
                        Text="起始时间：">
                    </ext:Label>
                    <ext:DatePicker ID="DatePicker1" Width="150px" runat="server">
                    </ext:DatePicker>
                    <ext:DatePicker ID="DatePicker2" Width="150px" runat="server">
                    </ext:DatePicker>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel3" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <ext:Label ID="Label3" runat="server" Width="80px" CssClass="inline" ShowLabel="false"
                        Text="起始时间：">
                    </ext:Label>
                    <ext:DatePicker ID="DatePicker3" ColumnWidth="50%" runat="server">
                    </ext:DatePicker>
                    <ext:DatePicker ID="DatePicker4" ColumnWidth="50%" runat="server">
                    </ext:DatePicker>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel4" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <ext:Label ID="Label4" runat="server" Width="80px" CssClass="inline" ShowLabel="false"
                        Text="工作时间：">
                    </ext:Label>
                    <ext:TextBox Width="40px" runat="server">
                    </ext:TextBox>
                    <ext:Label runat="server" Text="&nbsp;小时&nbsp;">
                    </ext:Label>
                    <ext:TextBox Width="40px" ID="TextBox1" runat="server">
                    </ext:TextBox>
                    <ext:Label ID="Label5" runat="server" Text="&nbsp;分钟">
                    </ext:Label>
                </Items>
            </ext:Panel>
        </Items>
    </ext:SimpleForm>
    </form>
</body>
</html>
