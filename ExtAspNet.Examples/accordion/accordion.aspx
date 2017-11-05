<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accordion.aspx.cs" Inherits="ExtAspNet.Examples.accordion.accordion2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Accordion ID="Accordion1" Title="手风琴控件" runat="server" Width="300px" Height="450px"
        EnableFill="true" ShowBorder="True" ActiveIndex="1">
        <Panes>
            <ext:AccordionPane ID="AccordionPane1" runat="server" Title="面板一" IconUrl="../images/16/1.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <ext:Label ID="Label1" Text="面板一中的文本" runat="server">
                    </ext:Label>
                </Items>
            </ext:AccordionPane>
            <ext:AccordionPane ID="AccordionPane2" runat="server" Title="面板二" IconUrl="../images/16/4.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <ext:Label ID="Label2" Text="面板二中的文本" runat="server">
                    </ext:Label>
                </Items>
            </ext:AccordionPane>
            <ext:AccordionPane ID="AccordionPane3" runat="server" Title="面板三" IconUrl="../images/16/7.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <ext:Label ID="Label3" Text="面板三中的文本" runat="server">
                    </ext:Label>
                </Items>
            </ext:AccordionPane>
        </Panes>
    </ext:Accordion>
    <br />
    <ext:Button ID="Button1" Text="获取当前展开的面板" runat="server" OnClick="Button1_Click">
    </ext:Button>
    </form>
</body>
</html>
