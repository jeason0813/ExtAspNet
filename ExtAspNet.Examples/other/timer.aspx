<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timer.aspx.cs" Inherits="ExtAspNet.Examples.other.timer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Timer ID="Timer1" Interval="5" Enabled="false" OnTick="Timer1_Tick" EnableAjaxLoading="false" runat="server">
    </ext:Timer>
    <ext:Button ID="btnStartTimer" runat="server" CssClass="inline" Text="启动定时器"
        OnClick="btnStartTimer_Click">
    </ext:Button>
    <ext:Button ID="btnStopTimer" runat="server" Text="停止定时器" OnClick="btnStopTimer_Click">
    </ext:Button>
    <br />
    <br />
    点击“启动定时器”，下面的文本会每隔 5 秒钟更新一次。
    <br />
    <ext:Label ID="labServerTime" runat="server" CssStyle="color:red;">
    </ext:Label>
    </form>
</body>
</html>
