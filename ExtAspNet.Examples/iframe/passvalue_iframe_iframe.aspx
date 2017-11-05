<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passvalue_iframe_iframe.aspx.cs"
    Inherits="ExtAspNet.Examples.iframe.passvalue_iframe_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server"></ext:PageManager>
    <ext:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
        BodyPadding="5px" EnableBackgroundColor="true">
        <Items>
            <ext:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false" Title="SimpleForm"
                EnableBackgroundColor="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                <Items>
                    <ext:DropDownList ID="ddlSheng" Label="请选择省份" ShowRedStar="true" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged">
                    </ext:DropDownList>
                </Items>
            </ext:SimpleForm>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
