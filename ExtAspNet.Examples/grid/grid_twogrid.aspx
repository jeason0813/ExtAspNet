﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_twogrid.aspx.cs" Inherits="ExtAspNet.Examples.grid.grid_twogrid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" AutoSizePanelID="RegionPanel1" />
    <ext:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
        <Regions>
            <ext:Region ID="Region1" ShowBorder="false" ShowHeader="false" Split="true" EnableSplitTip="true"
                CollapseMode="Mini" Margins="0 0 0 0" Width="200px" Position="Left" Layout="Fit"
                runat="server">
                <Items>
                    <ext:Grid ID="Grid2" ShowBorder="true" ShowHeader="true" Title="表格（班级）" runat="server"
                        DataKeyNames="Id,Name" EnableMultiSelect="false" EnableRowClick="true" OnRowClick="Grid2_RowClick">
                        <Columns>
                            <ext:TemplateField Width="60px">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                            </ext:TemplateField>
                            <ext:BoundField ExpandUnusedSpace="true" DataField="Name" DataFormatString="{0}"
                                HeaderText="姓名" />
                        </Columns>
                    </ext:Grid>
                </Items>
            </ext:Region>
            <ext:Region ID="Region2" ShowBorder="false" ShowHeader="false" Position="Center"
                Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Left" runat="server">
                <Items>
                    <ext:Panel Height="80px" EnableBackgroundColor="true" ShowHeader="false" BodyPadding="10px"
                        ShowBorder="false" runat="server">
                        <Items>
                            <ext:Label ID="Label4" runat="server" CssStyle="font-weight:bold;" Text="班级描述：">
                            </ext:Label>
                            <ext:Label ID="labelClassDesc" runat="server">
                            </ext:Label>
                        </Items>
                    </ext:Panel>
                    <ext:Grid ID="Grid1" BoxFlex="1" ShowBorder="true" ShowHeader="true" Title="表格（学生）"
                        runat="server" DataKeyNames="Id,Name">
                        <Columns>
                            <ext:TemplateField Width="60px">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                            </ext:TemplateField>
                            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                            <ext:TemplateField Width="60px" HeaderText="性别">
                                <ItemTemplate>
                                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                                    <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                                    <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                                </ItemTemplate>
                            </ext:TemplateField>
                            <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
                            <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                            <ext:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                        </Columns>
                    </ext:Grid>
                </Items>
            </ext:Region>
        </Regions>
    </ext:RegionPanel>
    <br />
    <br />
    </form>
</body>
</html>
