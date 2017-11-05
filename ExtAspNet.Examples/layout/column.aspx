<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="column.aspx.cs" Inherits="ExtAspNet.Examples.layout.column" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .columnpanel
        {
            margin-right: 5px;
        }
        .rowpanel
        {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Panel ID="Panel2" runat="server" Height="250px" Width="750px" ShowBorder="True"
        BodyPadding="5px" Layout="Column" ShowHeader="True" Title="面板（Height=250px Width=750px Layout=Column）">
        <Items>
            <ext:Panel ID="Panel1" Width="200px" Height="150px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label runat="server" Text="Width=200px Height=150px">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel4" ColumnWidth="60%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true" Layout="Fit">
                <Items>
                    <ext:Label ID="Label1" runat="server" Text="ColumnWidth=60%<br />长长的文本1<br />长长的文本2<br />长长的文本3<br />长长的文本4"
                        EncodeText="false">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel3" ColumnWidth="40%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label2" runat="server" Text="ColumnWidth=40%">
                    </ext:Label>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    <br />
    <ext:Panel ID="Panel5" runat="server" Height="250px" Width="750px" ShowBorder="True"
        BodyPadding="5px" Layout="Column" ShowHeader="True" Title="面板（Height=250px Width=750px Layout=Column）">
        <Items>
            <ext:Panel ID="Panel6" Width="200px" Height="150px" CssClass="columnpanel" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label3" runat="server" Text="Width=200px Height=150px">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel7" ColumnWidth="60%" CssClass="columnpanel" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true" Layout="Fit">
                <Items>
                    <ext:Label ID="Label4" runat="server" Text="ColumnWidth=60%<br />长长的文本1<br />长长的文本2<br />长长的文本3<br />长长的文本4"
                        EncodeText="false">
                    </ext:Label>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel8" ColumnWidth="40%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <ext:Label ID="Label5" runat="server" Text="ColumnWidth=40%">
                    </ext:Label>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    <br />
    <ext:Panel ID="Panel9" Height="350px" Width="750px" Layout="Column" BodyPadding="5px"
        ShowBorder="true" ShowHeader="true" EnableBackgroundColor="true" runat="server"
        Title="面板（Height=350px Width=750px Layout=Column BodyPadding=5px）">
        <Items>
            <ext:Panel ID="Panel13" ColumnWidth="50%" CssClass="columnpanel" ShowBorder="false"
                EnableBackgroundColor="true" ShowHeader="false" runat="server">
                <Items>
                    <ext:Panel ID="Panel14" Height="150px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                        ShowBorder="true" ShowHeader="true">
                        <Items>
                            <ext:Label ID="Label8" runat="server" Text="Height=100px CssClass=rowpanel">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                    <ext:Panel ID="Panel15" Height="100px" runat="server" BodyPadding="5px" ShowBorder="true"
                        ShowHeader="true">
                        <Items>
                            <ext:Label ID="Label9" runat="server" Text="Height=100px">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel16" ColumnWidth="50%" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" runat="server">
                <Items>
                    <ext:Panel ID="Panel17" Height="100px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                        ShowBorder="true" ShowHeader="true">
                        <Items>
                            <ext:Label ID="Label10" runat="server" Text="Height=100px CssClass=rowpanel">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                    <ext:Panel ID="Panel18" Height="150px" runat="server" BodyPadding="5px" ShowBorder="true"
                        ShowHeader="true">
                        <Items>
                            <ext:Label ID="Label11" runat="server" Text="Height=100px">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    <br />
    <br />
    使用HBox布局实现与上例相同的界面：
    <br />
    ===========================================================================
    <br />
    <ext:Panel ID="Panel10" Height="350px" Width="750px" Layout="HBox" BoxConfigAlign="Stretch"
        BoxConfigPosition="Start" BoxConfigPadding="5" BoxConfigChildMargin="0 5 0 0"
        ShowBorder="true" ShowHeader="true" EnableBackgroundColor="true" runat="server"
        Title="面板（Layout=HBox BoxConfigAlign=Stretch BoxConfigPosition=Start BoxConfigPadding=5 BoxConfigChildMargin=0 5 0 0）">
        <Items>
            <ext:Panel ID="Panel11" BoxFlex="1" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" runat="server">
                <Items>
                    <ext:Panel ID="Panel12" Height="150px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                        ShowBorder="true" ShowHeader="true">
                        <Items>
                            <ext:Label ID="Label6" runat="server" Text="Height=100px CssClass=rowpanel">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                    <ext:Panel ID="Panel19" Height="100px" runat="server" BodyPadding="5px" ShowBorder="true"
                        ShowHeader="true">
                        <Items>
                            <ext:Label ID="Label7" runat="server" Text="Height=100px">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                </Items>
            </ext:Panel>
            <ext:Panel ID="Panel20" BoxFlex="1" BoxMargin="0" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" runat="server">
                <Items>
                    <ext:Panel ID="Panel21" Height="100px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                        ShowBorder="true" ShowHeader="true">
                        <Items>
                            <ext:Label ID="Label12" runat="server" Text="Height=100px CssClass=rowpanel">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                    <ext:Panel ID="Panel22" Height="150px" runat="server" BodyPadding="5px" ShowBorder="true"
                        ShowHeader="true">
                        <Items>
                            <ext:Label ID="Label13" runat="server" Text="Height=100px">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
