<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ExtAspNet.Examples._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ExtAspNet 在线示例 - 基于 ExtJS 的专业 ASP.NET 2.0 控件库，拥有原生的 AJAX 支持和华丽的 UI 效果</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <meta name="Title" content="基于 ExtJS 的专业 ASP.NET 2.0 控件库，拥有原生的 AJAX 支持和华丽的UI效果 (ExtJS based ASP.NET 2.0 Controls with native AJAX Support and rich UI effects)" />
    <meta name="Description" content="ExtAspNet的使命是创建没有 JavaScript，没有 CSS，没有 UpdatePanel，没有 ViewState，没有 WebServices 的网站应用程序" />
    <meta name="Keywords" content="extjs,ext,asp.net,control,asp.net 2.0,ajax,web2.0" />
    <link href="css/default.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server">
    </ext:PageManager>
    <ext:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
        <Regions>
            <ext:Region ID="Region1" Margins="0 0 0 0" Height="62px" ShowBorder="false" ShowHeader="false"
                Position="Top" Layout="Fit" runat="server">
                <Toolbars>
                    <ext:Toolbar ID="Toolbar1" Position="Bottom" runat="server">
                        <Items>
                            <ext:Button ID="btnExpandAll" IconUrl="~/images/expand-all.gif" Text="展开全部" EnablePostBack="false"
                                runat="server">
                            </ext:Button>
                            <ext:Button ID="btnCollapseAll" IconUrl="~/images/collapse-all.gif" Text="折叠全部" EnablePostBack="false"
                                runat="server">
                            </ext:Button>
                            <ext:ToolbarFill ID="ToolbarFill1" runat="server">
                            </ext:ToolbarFill>
                            <ext:ToolbarText ID="ToolbarText1" Text="菜单：" runat="server">
                            </ext:ToolbarText>
                            <ext:DropDownList ID="ddlMenu" Width="120px" AutoPostBack="true" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged"
                                runat="server">
                                <ext:ListItem Text="树菜单" Value="tree" />
                                <ext:ListItem Text="手风琴+树菜单" Value="accordion" />
                            </ext:DropDownList>
                            <ext:ToolbarText ID="ToolbarText4" Text="&nbsp;&nbsp;语言：" runat="server">
                            </ext:ToolbarText>
                            <ext:DropDownList ID="ddlLanguage" Width="120px" AutoPostBack="true" OnSelectedIndexChanged="ddlLanguage_SelectedIndexChanged"
                                runat="server">
                                <ext:ListItem Text="English" Value="en" />
                                <ext:ListItem Text="简体中文" Value="zh_cn" />
                                <ext:ListItem Text="繁體中文" Value="zh_tw" />
                            </ext:DropDownList>
                            <ext:ToolbarText ID="ToolbarText3" Text="&nbsp;&nbsp;主题：" runat="server">
                            </ext:ToolbarText>
                            <ext:DropDownList ID="ddlTheme" Width="120px" AutoPostBack="true" OnSelectedIndexChanged="ddlTheme_SelectedIndexChanged"
                                runat="server">
                                <ext:ListItem Text="Blue" Selected="true" Value="blue" />
                                <ext:ListItem Text="Gray" Value="gray" />
                                <ext:ListItem Text="Access" Value="access" />
                                <ext:ListItem Text="Blueen（自定义）" Value="blueen" />
                                <ext:ListItem Text="First（自定义）" Value="first" />
                                <ext:ListItem Text="Second（自定义）" Value="second" />
                                <ext:ListItem Text="Fourth（自定义）" Value="fourth" />
                            </ext:DropDownList>
                        </Items>
                    </ext:Toolbar>
                </Toolbars>
                <Items>
                    <ext:ContentPanel ShowBorder="false" CssClass="header" ShowHeader="false" BodyStyle="background-color:#1C3E7E;"
                        ID="ContentPanel1" runat="server">
                        <div class="title">
                            <a href="./default.aspx" style="color:#fff;">ExtAspNet在线示例</a>
                        </div>
						<div class="version">
                            <a href="http://demo.extasp.net/en/" target="_blank" style="color:#fff;">English Version</a>
                        </div>
                    </ext:ContentPanel>
                </Items>
            </ext:Region>
            <ext:Region ID="Region2" Split="true" EnableSplitTip="true" CollapseMode="Mini" Width="200px"
                Margins="0 0 0 0" ShowHeader="true" Title="示例" EnableLargeHeader="false" Icon="Outline"
                EnableCollapse="true" Layout="Fit" Position="Left" runat="server">
            </ext:Region>
            <ext:Region ID="mainRegion" ShowHeader="false" Layout="Fit" Margins="0 0 0 0" Position="Center"
                runat="server">
                <Items>
                    <ext:TabStrip ID="mainTabStrip" EnableTabCloseMenu="true" ShowBorder="false" runat="server">
                        <Tabs>
                            <ext:Tab Title="首页" Layout="Fit" Icon="House" runat="server">
                                <Toolbars>
                                    <ext:Toolbar runat="server">
                                        <Items>
                                            <ext:ToolbarFill ID="ToolbarFill2" runat="server">
                                            </ext:ToolbarFill>
                                            <ext:Button ID="btnSourceCode" Icon="PageWhiteCode" Text="源代码" EnablePostBack="false"
                                                runat="server">
                                            </ext:Button>
                                            <%--<ext:ToolbarSeparator runat="server">
                                            </ext:ToolbarSeparator>
                                            <ext:Button ID="btnGotoOpenSourceSite" Icon="TabGo" Text="下载" OnClientClick="window.open('http://extaspnet.codeplex.com/', '_blank');"
                                                EnablePostBack="false" runat="server">
                                            </ext:Button>--%>
                                            <%--<ext:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                                            </ext:ToolbarSeparator>
                                            <ext:Button ID="Button1" Icon="TabGo" Text="论坛" OnClientClick="window.open('http://bbs.extasp.net', '_blank');"
                                                EnablePostBack="false" runat="server">
                                            </ext:Button>--%>
                                            <ext:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                                            </ext:ToolbarSeparator>
                                            <ext:Button ID="Button1" Icon="TabGo" Text="论坛" OnClientClick="window.open('http://bbs.extasp.net/', '_blank');"
                                                EnablePostBack="false" runat="server">
                                            </ext:Button>
                                        </Items>
                                    </ext:Toolbar>
                                </Toolbars>
                                <Items>
                                    <ext:ContentPanel ShowBorder="false" BodyPadding="10px" ShowHeader="false" AutoScroll="true"
                                        CssClass="intro" runat="server">
                                        <h2>关于ExtAspNet</h2>
                                        基于 ExtJS 的专业 ASP.NET 2.0 控件库，拥有原生的 AJAX 支持和华丽的 UI 效果。
                                        <br />
                                        <br />
                                        <h2>ExtAspNet的使命</h2>
                                           创建没有 JavaScript，没有 CSS，没有 UpdatePanel，没有 ViewState，没有 WebServices 的网站应用程序。
                                        <br />
                                        <br />
                                        <h2>支持的浏览器</h2>
                                            IE 7.0+、Firefox 3.6+、Chrome 3.0+、Opera 10.5+、Safari 3.0+
                                        <br />
                                        <br />
                                        <h2>授权协议</h2>
                                            Apache License 2.0 (Apache)
                                        <br />
                                        <br />
                                        <h2>相关链接</h2>
                                            论坛：<a target="_blank" style="font-weight:bold;" href="http://bbs.extasp.net/">http://bbs.extasp.net/</a>
                                        <br />
                                            示例：<a target="_blank" href="http://demo.extasp.net/">http://demo.extasp.net/</a>
                                        <br />
                                            文档：<a target="_blank" href="http://doc.extasp.net/">http://doc.extasp.net/</a>
                                        <br />
                                            下载：<a target="_blank" href="http://extaspnet.codeplex.com/">http://extaspnet.codeplex.com/</a>
                                        <br />
                                            博客：<a target="_blank" href="http://sanshi.cnblogs.com/">http://sanshi.cnblogs.com/</a>
                                        <br />
                                        <br />
                                        <h2>贡献者</h2>
                                        dcding、jima、jqpeng、zgjiang2、clyin2、leizhang5、xmzhu、huihuang、huayu、jbzhang、
                                        xlli、xmq、mgzhenhong、千帆、shguo、your568、503684912、Steve.Wei、yigehaoren、
                                        geruger、chenguizhu2006、efrigate43、abaocoole、skydb、kedee、sun1299shine、
                                        dk3214、thebox、wdrabbit、wjl_wjl520、BluesT、kaywood、gxpan、yymaoji、eroach、
                                        Blues T、sun1299shine、bmck、lqm4108、alexa99、olivia919、nopnop9、anson、Violet、
                                        davidwen、zqmars、261629698、zhaowenke、mmdcup、youwei、StevenGuan、hazardvn、gavindou、
                                        ttjacky、vbelyaev、ben.zhou、OktaEndy、abdullaharslan、RedOcean、ronnieoverby、GMz、
                                        tonyredondo、goansonpan、sa、土豆丝、李渝川、vazumi、yfen、用情、dotnet试验田、あ雨换晴、
                                        〓飚〓、173242184、※晨曦后浪、yezie、宇洋、dennis、第一滴冰雨、快乐的猪、恒业创达、杜志彬、
                                        大石头、凤舞天翔、泗水亭长、稻草人、低调的生活、知心叔叔、惊鸿沧海、峰回路转、随便逛逛、
                                        郑伟、redleaf、Landroid、渔夫子、过往烟云、czfeifan、大雄、幻之达、隨风.NET、被遗忘的角落、
                                        22854632、水若寒冰、emissary、落末醉、大鸟打小鸟、HUGO.理、河蟹社会、信徒、swtseaman、张怡、
                                        magicyugi、⑥阿太⑥、TiDi、西门吹雪、含章、￡快乐→无罪、feitian78、e先生、你是我的、蓝色天空、
                                        松松工作室、Dennis_Liu、︶ㄣ東東ㄣ、天蓝若空、李剑飞、克儿~、石头鱼、Spring、梦如人生、破风、
                                        吉吉、落叶飞尘、黑眼睛咪咪

                                        
                                    </ext:ContentPanel>
                                </Items>
                            </ext:Tab>
                        </Tabs>
                    </ext:TabStrip>
                </Items>
            </ext:Region>
        </Regions>
    </ext:RegionPanel>
    <ext:Window ID="windowSourceCode" Icon="PageWhiteCode" Title="源代码" Popup="false"
        EnableIFrame="true" runat="server" IsModal="true" Width="900px" Height="550px"
        EnableClose="true" EnableMaximize="true" EnableResize="true">
    </ext:Window>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/menu.xml"></asp:XmlDataSource>
    </form>
    <img src="images/logo/logo3.gif" alt="ExtAspNet 图标" id="logo" />
    <script src="./js/default.js" type="text/javascript"></script>
</body>
</html>
