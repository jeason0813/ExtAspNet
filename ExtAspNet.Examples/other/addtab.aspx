<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtab.aspx.cs" Inherits="ExtAspNet.Examples.other.addtab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        if (top == window) {
            window.location.href = "../default.aspx#/other/addtab.aspx";
        }

        function openHelloExtAspNet() {
            var node = {
                attributes: {
                    href: "/basic/hello.aspx"
                },
                text: "你好 ExtAspNet",
                id: "hello_extaspnet_example"
            };

            //window.parent.addExampleTab(node);
            parent.addExampleTab.apply(parent, [node]);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Button ID="Button1" runat="server" EnablePostBack="false" OnClientClick="openHelloExtAspNet();"
        Text="打开示例《你好 ExtAspNet》">
    </ext:Button>
    </form>
</body>
</html>
