<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_groupheader.aspx.cs"
    Inherits="ExtAspNet.Examples.grid.grid_groupheader" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="850px"
        runat="server" DataKeyNames="Guid">
        <GroupColumns>
            <ext:GridGroupColumn HeaderText="河南省" TextAlign="Center">
                <GroupColumns>
                    <ext:GridGroupColumn HeaderText="驻马店市" TextAlign="Center">
                        <Columns>
                            <ext:BoundField Width="100px" DataField="HZData1" HeaderText="数据一" />
                            <ext:BoundField Width="100px" DataField="HZData2" HeaderText="数据二" />
                        </Columns>
                    </ext:GridGroupColumn>
                    <ext:GridGroupColumn HeaderText="漯河市" TextAlign="Center">
                        <Columns>
                            <ext:BoundField Width="100px" DataField="HLData1" HeaderText="数据一" />
                            <ext:BoundField Width="100px" DataField="HLData2" HeaderText="数据二" />
                        </Columns>
                    </ext:GridGroupColumn>
                </GroupColumns>
            </ext:GridGroupColumn>
            <ext:GridGroupColumn HeaderText="安徽省" TextAlign="Center">
                <GroupColumns>
                    <ext:GridGroupColumn HeaderText="合肥市" TextAlign="Center">
                        <Columns>
                            <ext:BoundField Width="100px" DataField="AHData1" HeaderText="数据一" />
                            <ext:BoundField Width="100px" DataField="AHData2" HeaderText="数据二" />
                        </Columns>
                    </ext:GridGroupColumn>
                    <ext:GridGroupColumn HeaderText="六安市" TextAlign="Center">
                        <Columns>
                            <ext:BoundField Width="100px" DataField="ALData1" HeaderText="数据一" />
                            <ext:BoundField Width="100px" DataField="ALData2" HeaderText="数据二" />
                        </Columns>
                    </ext:GridGroupColumn>
                </GroupColumns>
            </ext:GridGroupColumn>
        </GroupColumns>
    </ext:Grid>
    <br />
    <br />
    </form>
</body>
</html>
