<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_iframe.aspx.cs" Inherits="ExtAspNet.Examples.iframe.grid_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AutoSizePanelID="Panel7" runat="server" />
    <ext:Panel ID="Panel7" runat="server" EnableBackgroundColor="true" BodyPadding="3px"
        EnableLargeHeader="true" Title="Panel" ShowBorder="false" ShowHeader="True" Layout="VBox"
        BoxConfigAlign="Stretch">
        <Items>
            <ext:Form ID="Form5" ShowBorder="False" BodyPadding="5px" EnableBackgroundColor="true"
                ShowHeader="False" runat="server">
                <Rows>
                    <ext:FormRow>
                        <Items>
                            <ext:TwinTriggerBox runat="server" EmptyText="输入要搜索的关键词" ShowLabel="false" ID="ttbSearch"
                                ShowTrigger1="false" OnTrigger1Click="ttbSearch_Trigger1Click" OnTrigger2Click="ttbSearch_Trigger2Click"
                                Trigger1Icon="Clear" Trigger2Icon="Search">
                            </ext:TwinTriggerBox>
                            <ext:DropDownList ID="DropDownList1" ShowLabel="false" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                runat="server">
                                <ext:ListItem Text="过滤条件一" Value="filter1" />
                                <ext:ListItem Text="过滤条件二" Value="filter2" />
                                <ext:ListItem Text="过滤条件三" Value="filter3" />
                            </ext:DropDownList>
                        </Items>
                    </ext:FormRow>
                </Rows>
            </ext:Form>
            <ext:Panel ID="Panel8" ShowBorder="True" ShowHeader="false" BoxFlex="1" Layout="Fit"
                runat="server">
                <Toolbars>
                    <ext:Toolbar ID="Toolbar2" runat="server">
                        <Items>
                            <ext:Button ID="btnPopupWindow" Text="弹出对话框" runat="server">
                            </ext:Button>
                            <ext:ToolbarSeparator runat="server">
                            </ext:ToolbarSeparator>
                            <ext:Button ID="btnCheckSelection" Text="检查选中项状态" runat="server">
                            </ext:Button>
                            <ext:ToolbarSeparator runat="server">
                            </ext:ToolbarSeparator>
                            <ext:Button ID="btnConfirmButton" Text="删除选中项" runat="server">
                            </ext:Button>
                        </Items>
                    </ext:Toolbar>
                </Toolbars>
                <Items>
                    <ext:Grid ID="Grid2" Title="Grid2" PageSize="80" ShowBorder="false" AllowPaging="true"
                        OnPageIndexChange="Grid2_PageIndexChange" ShowHeader="False" runat="server" EnableCheckBoxSelect="True"
                        DataKeyNames="Id,Name" OnSort="Grid2_Sort" EnableRowNumber="True">
                        <Columns>
                            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                            <ext:TemplateField Width="60px" HeaderText="性别">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                                </ItemTemplate>
                            </ext:TemplateField>
                            <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
                            <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                            <ext:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                            <ext:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                                HeaderText="分组"></ext:ImageField>
                            <ext:WindowField TextAlign="Center" Width="60px" WindowID="Window1" Icon="Pencil"
                                ToolTip="编辑" DataIFrameUrlFields="Id,Name" DataIFrameUrlFormatString="../grid/grid_iframe_window.aspx?id={0}&name={1}"
                                Title="编辑" IFrameUrl="~/alert.aspx" />
                            <ext:LinkButtonField TextAlign="Center" Width="60px" Icon="Delete" ToolTip="删除" ConfirmText="确认删除？（功能未实现）"
                                CommandName="LinkButtonMyText" />
                        </Columns>
                    </ext:Grid>
                </Items>
            </ext:Panel>
        </Items>
    </ext:Panel>
    <ext:Window ID="Window1" Title="弹出窗体" Popup="false" EnableIFrame="true" IFrameUrl="about:blank"
        EnableMaximize="true" Target="Top" EnableResize="true" runat="server" OnClose="Window1_Close"
        IsModal="true" Width="750px" EnableConfirmOnClose="true" Height="550px">
    </ext:Window>
    </form>
</body>
</html>
