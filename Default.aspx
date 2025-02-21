<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="mybar3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" SelectCommand="SELECT User_ID, UserName, pass, mobile, fullname FROM menu_users WHERE (User_ID = @User_ID)">
            <SelectParameters>
                <asp:SessionParameter Name="User_ID" SessionField="userId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
