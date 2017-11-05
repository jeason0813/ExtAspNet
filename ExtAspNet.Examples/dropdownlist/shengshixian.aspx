<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shengshixian.aspx.cs" Inherits="ExtAspNet.Examples.data.shengshixian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:SimpleForm ID="SimpleForm1" Width="350px" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        Title="简单表单">
        <Items>
            <ext:DropDownList ID="ddlSheng" Label="省份" ShowRedStar="true" CompareType="String"
                CompareValue="-1" CompareOperator="NotEqual" CompareMessage="请选择省份！" runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged">
            </ext:DropDownList>
            <ext:DropDownList ID="ddlShi" Label="地区市" ShowRedStar="true" CompareType="String"
                CompareValue="-1" CompareOperator="NotEqual" CompareMessage="请选择地区市！" runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="ddlShi_SelectedIndexChanged">
            </ext:DropDownList>
            <ext:DropDownList ID="ddlXian" ShowRedStar="true" CompareType="String" CompareValue="-1"
                CompareOperator="NotEqual" CompareMessage="请选择县区市！" Label="县区市" runat="server">
            </ext:DropDownList>
            <ext:Button ID="btnSubmit" runat="server" Text="获取选中的省市县" ValidateForms="SimpleForm1"
                ValidateTarget="Top" OnClick="btnSubmit_Click">
            </ext:Button>
            <ext:Label ID="labResult" runat="server" ShowLabel="false" CssStyle="font-weight:bold;">
            </ext:Label>
        </Items>
    </ext:SimpleForm>
    <br />
    <br />
    </form>
</body>
</html>
