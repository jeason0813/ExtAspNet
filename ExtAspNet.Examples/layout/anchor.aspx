<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anchor.aspx.cs" Inherits="ExtAspNet.Examples.layout.anchor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Panel ID="Panel3" Title="面板一（Height=300px Width=750px）" runat="server" Height="300px"
        Width="750px" BodyPadding="5px" ShowBorder="True" ShowHeader="True">
        <Items>
            <ext:Panel ID="Panel1" runat="server" ShowBorder="True" EnableBackgroundColor="true"
                BodyPadding="5px" ShowHeader="true" Title="面板">
                <Items>
                    <ext:Button ID="Button1" Text="按钮" runat="server">
                    </ext:Button>
                </Items>
            </ext:Panel>
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
    <ext:Panel ID="Panel2" runat="server" Height="300px" Width="750px" ShowBorder="True"
        BodyPadding="5px" Layout="Anchor" ShowHeader="True" Title="面板二（Height=300px Width=750px Layout=Anchor）">
        <Items>
            <ext:Panel ID="Panel4" AnchorValue="60% 30%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="True" ShowHeader="true" Title="面板（AnchorValue=60% 30%）">
                <Items>
                    <ext:Button ID="Button3" Text="按钮" runat="server">
                    </ext:Button>
                </Items>
            </ext:Panel>
            <ext:Form ID="Form2" AnchorValue="100% 70%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="True" ShowHeader="true" Title="表单（AnchorValue=100% 70%）">
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
                            <ext:Button ID="Button7" Text="按钮" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:FormRow>
                </Rows>
            </ext:Form>
        </Items>
    </ext:Panel>
    <br />
    <ext:Panel ID="Panel5" Title="面板三（Width=750px）" runat="server" EnableBackgroundColor="true"
        BodyPadding="3px" ShowBorder="True" ShowHeader="True" Width="750px">
        <Items>
            <ext:Form ID="Form4" ShowBorder="False" BodyPadding="5px" EnableBackgroundColor="true"
                ShowHeader="False" runat="server">
                <Rows>
                    <ext:FormRow>
                        <Items>
                            <ext:TextBox ID="TextBox3" Label="用户名" runat="server">
                            </ext:TextBox>
                            <ext:Button ID="Button6" Text="搜索" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:FormRow>
                </Rows>
            </ext:Form>
            <ext:Panel ID="Panel6" ShowBorder="True" ShowHeader="false" runat="server">
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
                    <ext:Grid ID="Grid1" Title="表格" PageSize="3" ShowBorder="false" ShowHeader="False"
                        AutoHeight="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name"
                        EnableRowNumber="True">
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
        </Items>
    </ext:Panel>
    <br />
    <ext:Panel ID="Panel7" runat="server" EnableBackgroundColor="true" BodyPadding="3px"
        ShowBorder="True" ShowHeader="True" Width="750px" Height="350px" Title="面板四（Width=750px Height=350px Layout=Anchor）"
        Layout="Anchor">
        <Items>
            <ext:Form ID="Form5" ShowBorder="False" BodyPadding="5px" AnchorValue="100%" EnableBackgroundColor="true"
                ShowHeader="False" runat="server">
                <Rows>
                    <ext:FormRow>
                        <Items>
                            <ext:TextBox ID="TextBox5" Label="用户名" runat="server">
                            </ext:TextBox>
                            <ext:TextBox ID="TextBox8" Label="所在班级" runat="server">
                            </ext:TextBox>
                        </Items>
                    </ext:FormRow>
                    <ext:FormRow>
                        <Items>
                            <ext:TextBox ID="TextBox6" Label="所在年级" runat="server">
                            </ext:TextBox>
                            <ext:Button ID="Button11" Text="搜索" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:FormRow>
                </Rows>
            </ext:Form>
            <ext:Panel ID="Panel8" ShowBorder="True" ShowHeader="false" AnchorValue="100% -62"
                Layout="Fit" runat="server">
                <Toolbars>
                    <ext:Toolbar ID="Toolbar2" runat="server">
                        <Items>
                            <ext:Button ID="Button8" Text="按钮一" runat="server">
                            </ext:Button>
                            <ext:Button ID="Button9" Text="按钮二" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:Toolbar>
                </Toolbars>
                <Items>
                    <ext:Grid ID="Grid2" Title="Grid2" PageSize="3" ShowBorder="false" ShowHeader="False"
                        runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name" EnableRowNumber="True">
                        <Columns>
                            <ext:TemplateField Width="60px">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                            </ext:TemplateField>
                            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                            <ext:TemplateField Width="60px" HeaderText="性别">
                                <ItemTemplate>
                                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                                    <asp:Label ID="Label6" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
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
        </Items>
    </ext:Panel>
    <br />
    <br />
    使用VBox布局实现与上例相同的界面：
    <br />
    ===========================================================================
    <br />
    <ext:Panel ID="Panel9" runat="server" EnableBackgroundColor="true" Layout="VBox"
        BoxConfigAlign="Stretch" BoxConfigPosition="Start" BoxConfigPadding="3" BoxConfigChildMargin="0"
        ShowBorder="True" ShowHeader="True" Width="750px" Height="350px" Title="面板五（Layout=VBox BoxConfigAlign=Stretch BoxConfigPosition=Start BoxConfigPadding=3 BoxConfigChildMargin=0）">
        <Items>
            <ext:Form ID="Form6" ShowBorder="False" BodyPadding="5px" EnableBackgroundColor="true"
                ShowHeader="False" runat="server">
                <Rows>
                    <ext:FormRow>
                        <Items>
                            <ext:TextBox ID="TextBox4" Label="用户名" runat="server">
                            </ext:TextBox>
                            <ext:TextBox ID="TextBox7" Label="所在班级" runat="server">
                            </ext:TextBox>
                        </Items>
                    </ext:FormRow>
                    <ext:FormRow>
                        <Items>
                            <ext:TextBox ID="TextBox9" Label="所在年级" runat="server">
                            </ext:TextBox>
                            <ext:Button ID="Button10" Text="搜索" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:FormRow>
                </Rows>
            </ext:Form>
            <ext:Panel ID="Panel10" ShowBorder="True" ShowHeader="false" BoxFlex="1" Layout="Fit"
                runat="server">
                <Toolbars>
                    <ext:Toolbar ID="Toolbar3" runat="server">
                        <Items>
                            <ext:Button ID="Button12" Text="按钮一" runat="server">
                            </ext:Button>
                            <ext:Button ID="Button13" Text="按钮二" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:Toolbar>
                </Toolbars>
                <Items>
                    <ext:Grid ID="Grid3" Title="Grid3" PageSize="3" ShowBorder="false" ShowHeader="False"
                        runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name" EnableRowNumber="True">
                        <Columns>
                            <ext:TemplateField Width="60px">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                            </ext:TemplateField>
                            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                            <ext:TemplateField Width="60px" HeaderText="性别">
                                <ItemTemplate>
                                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                                    <asp:Label ID="Label8" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
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
        </Items>
    </ext:Panel>
    </form>
</body>
</html>
