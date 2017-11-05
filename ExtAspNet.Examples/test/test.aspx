<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="test.aspx.cs"
    Inherits="ExtAspNet.Examples.test.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function ClientSubMit() {
            window.document.forms[0].submit();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
<ext:Panel Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start" BoxConfigPadding="5"
    BoxConfigChildMargin="0 0 5 0">
    <Items>
        <ext:Panel BoxFlex="1"></ext:Panel>
        <ext:Panel Height="100px"></ext:Panel>
        <ext:Panel BoxFlex="2" BoxMargin="0"></ext:Panel>
    </Items>
</ext:Panel>
    <ext:PageManager ID="PageManager1" runat="server" EnableAjax="true" AutoSizePanelID="Form2" />
    <ext:Form ID="Form2" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        Title="Form" ShowBorder="true" ShowHeader="true">
        <Rows>
            <ext:FormRow>
                <Items>
                    <ext:TextBox ID="TextBox1" runat="server" Label="验证码" Width="200px" />
                </Items>
            </ext:FormRow>
            <ext:FormRow>
                <Items>
                    <ext:Image ID="Image1" runat="server" Label="" ImageUrl="~/Common/ValidateCode.aspx"
                        Width="100px" />
                </Items>
            </ext:FormRow>
            <ext:FormRow ColumnWidths="50px 50px">
                <Items>
                    <ext:Button ID="Button1" runat="server" Text="确定" ValidateForms="Form2" Type="Submit" />
                    <ext:Button ID="btnClose" runat="server" Text="取消" EnablePostBack="False" />
                </Items>
            </ext:FormRow>
        </Rows>
    </ext:Form>
    <%--<ext:Button ID="Button1" Text="测试客户端提交" runat="server" EnablePostBack="false" OnClientClick="ClientSubMit()"
        CssClass="inline">
    </ext:Button>--%>
    <%-- <ext:Button ID="btnSend" Text="发送" runat="server" EnablePostBack="false" OnClientClick="Test();">
    </ext:Button>
    <ext:TextBox runat="server" ID="TextBox1" EmptyText="文本框值改变则自动回发" ShowLabel="false"
        Width="200" AutoPostBack="false">
    </ext:TextBox>
    <asp:DropDownList runat="server">
        <asp:ListItem Text="Text1" Value="Value1"></asp:ListItem>
        <asp:ListItem Text="Text1" Value="Value1"></asp:ListItem>
        <asp:ListItem Text="普通型1<L>1.5" Value="普通型1<L>1.5"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <ext:Form Width="600px" BodyPadding="5px" Title="表单" runat="server">
        <Rows>
            <ext:FormRow ColumnWidths="50% 50%">
                <Items>
                    <ext:TextBox Label="用户名" runat="server">
                    </ext:TextBox>
                    <ext:Panel ID="Panel1" ShowHeader="false" ShowBorder="false" runat="server">
                        <Items>
                            <ext:Button Text="按钮一" CssClass="inline" runat="server">
                            </ext:Button>
                            <ext:Button ID="Button1" Text="按钮二" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:Panel>
                </Items>
            </ext:FormRow>
        </Rows>
    </ext:Form>--%>
    </form>
</body>
</html>
