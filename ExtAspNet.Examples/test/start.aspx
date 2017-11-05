<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="start.aspx.cs"
    Inherits="DotNetOA.Web.task.start" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Form ID="Form2" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        Title="发起新任务" LabelWidth="100px">
        <Rows>
            <ext:FormRow ID="FormRow1" runat="server">
                <Items>
                    <ext:CheckBoxList ID="CheckBoxList1" runat="server" Label="执行人" Required="true" ColumnNumber="6">
                    </ext:CheckBoxList>
                </Items>
            </ext:FormRow>
        </Rows>
    </ext:Form>
    <ext:Button ID="Button1" runat="server" OnClick="btn_Submit_Click"></ext:Button>
    </form>
</body>
</html>
