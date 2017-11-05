<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="row.aspx.cs" Inherits="ExtAspNet.Examples.layout.row" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .rowpanel
        {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Panel ID="Panel2" runat="server" Height="350px" Width="550px" ShowBorder="True"
        BodyPadding="5px" Layout="Row" ShowHeader="True" EnableBackgroundColor="false"
        Title="面板（Height=350px Width=550px Layout=Row）">
        <Items>
            <ext:Panel ID="Panel1" Height="50px" Width="200px" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="True" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label3" Text="Height=50px Width=200px" runat="server">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel4" RowHeight="30%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="True" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label4" Text="RowHeight=30%" runat="server">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel3" RowHeight="70%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="True" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label5" Text="RowHeight=70%" runat="server">
                    </ext:Label>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    <br />
    <ext:Panel ID="Panel5" runat="server" Height="350px" Width="550px" ShowBorder="True"
        BodyPadding="5px" Layout="Row" ShowHeader="True" EnableBackgroundColor="false"
        Title="面板（Height=350px Width=550px Layout=Row）">
        <Items>
            <ext:Panel ID="Panel6" Height="50px" Width="200px" CssClass="rowpanel" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="True" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label1" Text="Height=50px Width=200px" runat="server">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel7" RowHeight="30%" CssClass="rowpanel" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="True" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label2" Text="RowHeight=30%" runat="server">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel8" RowHeight="70%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="True" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label6" Text="RowHeight=70%" runat="server">
                    </ext:Label>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
