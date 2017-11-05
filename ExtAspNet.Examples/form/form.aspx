<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="ExtAspNet.Examples.form.form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .redcolor
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Form Width="600px" BodyPadding="5px" ID="extForm1" EnableBackgroundColor="true"
        LabelWidth="100px" runat="server" Title="表单 1">
        <Rows>
            <ext:FormRow ColumnWidths="40% 60%">
                <Items>
                    <ext:Label ID="Label1" runat="server" Label="标签" Text="标签的值">
                    </ext:Label>
                    <ext:CheckBox ID="CheckBox1" runat="server" Text="复选框" Label="复选框" CssClass="redcolor">
                    </ext:CheckBox>
                </Items>
            </ext:FormRow>
            <ext:FormRow ColumnWidths="40% 60%">
                <Items>
                    <ext:DropDownList ID="DropDownList1" runat="server" Label="下拉列表" Required="true"
                        ShowRedStar="True">
                        <ext:ListItem Selected="true" Text="可选项 1" Value="0"></ext:ListItem>
                        <ext:ListItem Text="可选项 2" Value="1"></ext:ListItem>
                    </ext:DropDownList>
                    <ext:TextBox ID="TextBox1" ShowRedStar="true" runat="server" Label="文本框" Required="true"
                        Text="">
                    </ext:TextBox>
                </Items>
            </ext:FormRow>
            <ext:FormRow>
                <Items>
                    <ext:Panel ID="Panel1" runat="server" EnableBackgroundColor="true" ShowBorder="false"
                        ShowHeader="false">
                        <Items>
                            <ext:Button runat="server" Text="验证此表单并提交" ValidateForms="extForm1" ID="btnSubmitForm1"
                                OnClick="btnSubmitForm1_Click">
                            </ext:Button>
                        </Items>
                    </ext:Panel>
                </Items>
            </ext:FormRow>
        </Rows>
    </ext:Form>
    <br />
    <ext:Form Width="600px" LabelWidth="100px" EnableBackgroundColor="true" BodyPadding="5px"
        ID="extForm2" runat="server" Title="表单 2">
        <Rows>
            <ext:FormRow>
                <Items>
                    <ext:Label ID="Label3" Label="电话" Text="0551-1234567" runat="server" />
                    <ext:Label ID="Label16" runat="server" Label="申请人" Text="admin">
                    </ext:Label>
                </Items>
            </ext:FormRow>
            <ext:FormRow>
                <Items>
                    <ext:Label ID="Label4" Label="编号" Text="200804170006" runat="server" />
                    <ext:TextBox ID="TextBox2" Required="true" ShowRedStar="true" Label="电子邮箱" RegexPattern="EMAIL"
                        RegexMessage="请输入有效的邮箱地址！" runat="server">
                    </ext:TextBox>
                </Items>
            </ext:FormRow>
            <ext:FormRow>
                <Items>
                    <ext:DropDownList ID="DropDownList3" Label="审批人" Required="true" runat="server" ShowRedStar="True">
                        <ext:ListItem Text="老大甲" Value="0"></ext:ListItem>
                        <ext:ListItem Text="老大乙" Value="1"></ext:ListItem>
                        <ext:ListItem Text="老大丙" Value="1"></ext:ListItem>
                    </ext:DropDownList>
                </Items>
            </ext:FormRow>
            <ext:FormRow>
                <Items>
                    <ext:NumberBox ID="NumberBox1" Label="申请数量" MaxValue="1000" Required="true" runat="server"
                        ShowRedStar="True" />
                </Items>
            </ext:FormRow>
            <ext:FormRow>
                <Items>
                    <ext:TextArea ID="TextArea1" runat="server" Label="描述" ShowRedStar="True" Required="True">
                    </ext:TextArea>
                </Items>
            </ext:FormRow>
            <ext:FormRow>
                <Items>
                    <ext:Button ID="btnSubmitAll" Text="验证两个表单并提交" runat="server" OnClick="btnSubmitAll_Click"
                        ValidateForms="extForm1,extForm2" />
                </Items>
            </ext:FormRow>
        </Rows>
    </ext:Form>
    </form>
</body>
</html>
