<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="useradded.aspx.cs" Inherits="mybar3.links_menu.useradded" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Sub_Menu_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="main_Menu_Name" HeaderText="main_Menu_Name" SortExpression="main_Menu_Name" />
                <asp:BoundField DataField="Url_link" HeaderText="Url_link" SortExpression="Url_link" />
                <asp:BoundField DataField="sub_image_url" HeaderText="sub_image_url" SortExpression="sub_image_url" />
                <asp:BoundField DataField="En" HeaderText="En" SortExpression="En" />
                <asp:BoundField DataField="Name_Sub_menu" HeaderText="Name_Sub_menu" SortExpression="Name_Sub_menu" />
                <asp:BoundField DataField="Sub_Menu_ID" HeaderText="Sub_Menu_ID" InsertVisible="False" ReadOnly="True" SortExpression="Sub_Menu_ID" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource111" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" SelectCommand="SELECT Menu_Main.main_Menu_Name, Menu_sub.Url_link, Menu_sub.sub_image_url, Menu_sub.En, Menu_sub.Name_Sub_menu, Menu_sub.Sub_Menu_ID FROM Menu_sub INNER JOIN Menu_Main ON Menu_sub.Main_Menu_ID = Menu_Main.main_Menu_Id WHERE (Menu_Main.Teacher_ID = @teacher)">
            <SelectParameters>
                <asp:QueryStringParameter Name="teacher" QueryStringField="t" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
