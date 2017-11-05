<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fit.aspx.cs" Inherits="ExtAspNet.Examples.layout.fit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Panel ID="Panel3" Title="面板一（未设置Layout属性）" runat="server" Height="200px" Width="750px"
        BodyPadding="5px" ShowBorder="True" EnableBackgroundColor="false" ShowHeader="True">
        <Items>
            <ext:Form ID="Form3" runat="server" ShowBorder="True" EnableBackgroundColor="true"
                BodyPadding="5px" ShowHeader="true" Title="表单">
                <Rows>
                    <ext:FormRow>
                        <Items>
                            <ext:Label ID="Label2" Label="文本" Text="文本内容" runat="server">
                            </ext:Label>
                        </Items>
                    </ext:FormRow>
                    <ext:FormRow>
                        <Items>
                            <ext:TextBox ID="TextBox2" Label="输入框" runat="server">
                            </ext:TextBox>
                            <ext:Button ID="Button2" Text="按钮" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:FormRow>
                </Rows>
            </ext:Form>
        </Items>
    </ext:Panel>
    <br />
    <ext:Panel ID="Panel1" Title="面板二（Layout=Fit）" runat="server" Layout="Fit" Height="200px"
        BodyPadding="5px" Width="750px" ShowBorder="True" EnableBackgroundColor="false"
        ShowHeader="True">
        <Items>
            <ext:Form ID="Form2" runat="server" EnableBackgroundColor="true" ShowBorder="True"
                BodyPadding="5px" ShowHeader="true" Title="表单">
                <Rows>
                    <ext:FormRow>
                        <Items>
                            <ext:Label ID="Label1" Label="文本" Text="文本内容" runat="server">
                            </ext:Label>
                        </Items>
                    </ext:FormRow>
                    <ext:FormRow>
                        <Items>
                            <ext:TextBox ID="TextBox1" Label="输入框" runat="server">
                            </ext:TextBox>
                            <ext:Button ID="Button1" Text="按钮" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:FormRow>
                </Rows>
            </ext:Form></Items>
    </ext:Panel>
    <br />
    <ext:Panel ID="Panel2" Title="面板三（Layout=Fit）" runat="server" Layout="Fit" Height="300px"
        EnableBackgroundColor="true" BodyPadding="5px" Width="750px" ShowBorder="True"
        ShowHeader="True">
        <Toolbars>
            <ext:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <ext:Button ID="Button4" Text="按钮一" runat="server">
                    </ext:Button>
                    <ext:Button ID="Button5" Text="按钮二" runat="server">
                    </ext:Button>
                </Items>
            </ext:Toolbar>
        </Toolbars>
        <Items>
            <ext:Grid ID="Grid1" Title="表格" PageSize="4" ShowBorder="true" ShowHeader="False"
                runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name" EnableRowNumber="True">
                <Columns>
                    <ext:TemplateField Width="60px">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                        </ItemTemplate>
                    </ext:TemplateField>
                    <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                    <ext:TemplateField Width="60px" HeaderText="性别">
                        <ItemTemplate>
                            <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                            <asp:Label ID="Label4" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                        </ItemTemplate>
                    </ext:TemplateField>
                    <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
                    <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                    <ext:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                        DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                        DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                    <ext:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                        HeaderText="分组"></ext:ImageField>
                </Columns>
            </ext:Grid>
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
