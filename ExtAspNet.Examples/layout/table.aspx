<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="ExtAspNet.Examples.layout.table" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        table.x-table-layout td
        {
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Panel ID="Panel2" runat="server" Height="450px" Width="750px" ShowBorder="True"
        Layout="Table" TableConfigColumns="3" ShowHeader="True" Title="面板（Height=450px Width=750px Layout=Table）">
        <Items>
            <ext:Panel ID="Panel1" Title="Panel1" Width="200px" Height="210px" EnableBackgroundColor="true"
                TableRowspan="2" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label1" runat="server" Text="Width=200px Height=210px TableRowspan=2">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel3" Title="Panel2" Width="410px" Height="100px" EnableBackgroundColor="true"
                TableColspan="2" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label2" runat="server" Text="Width=410px Height=100px TableColspan=2">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel4" Title="Panel3" Width="200px" Height="100px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label3" runat="server" Text="Width=200px Height=100px">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel5" Title="Panel4" Width="200px" Height="100px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label4" runat="server" Text="Width=200px Height=100px">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel6" Title="Panel5" Width="200px" Height="100px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label5" runat="server" Text="Width=200px Height=100px">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel7" Title="Panel6" Width="200px" Height="100px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label6" runat="server" Text="Width=200px Height=100px">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel8" Title="Panel6" Width="200px" Height="100px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label7" runat="server" Text="Width=200px Height=100px">
                    </ext:Label>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
