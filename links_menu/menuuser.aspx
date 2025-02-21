<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuuser.aspx.cs" Inherits="mybar3.links_menu.menuuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" SelectCommand="SELECT menu_count FROM count"></asp:SqlDataSource>
            <strong>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="auto-style2" GridLines="None" Width="100%">
                <Columns>
                    <asp:BoundField DataField="menu_count" HeaderText="menu_count" SortExpression="menu_count" />
                </Columns>
            </asp:GridView>
            </strong>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [menu_users] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [menu_users] ([UserName], [pass], [mobile], [fullname], [color], [week]) VALUES (@UserName, @pass, @mobile, @fullname, @color, @week)" SelectCommand="SELECT * FROM [menu_users]" UpdateCommand="UPDATE [menu_users] SET [User_ID] = @User_ID, [pass] = @pass, [mobile] = @mobile, [fullname] = @fullname, [color] = @color, [week] = @week WHERE [UserName] = @UserName">
            <DeleteParameters>
                <asp:Parameter Name="UserName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="fullname" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="week" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="User_ID" Type="Int32" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="fullname" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="week" Type="Int16" />
                <asp:Parameter Name="UserName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
            start at 6:32 PM on 27 08 2023<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ReadOnly="True" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                <asp:BoundField DataField="week" HeaderText="week" SortExpression="week" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource111" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" SelectCommand="SELECT * FROM [Menu_Main] WHERE ([Teacher_ID] = @Teacher_ID)" DeleteCommand="DELETE FROM [Menu_Main] WHERE [main_Menu_Id] = @main_Menu_Id" InsertCommand="INSERT INTO [Menu_Main] ([Teacher_ID], [main_Menu_Name], [main_image_url], [main_Menu_Name_en], [order_id]) VALUES (@Teacher_ID, @main_Menu_Name, @main_image_url, @main_Menu_Name_en, @order_id)" UpdateCommand="UPDATE [Menu_Main] SET [Teacher_ID] = @Teacher_ID, [main_Menu_Name] = @main_Menu_Name, [main_image_url] = @main_image_url, [main_Menu_Name_en] = @main_Menu_Name_en, [order_id] = @order_id WHERE [main_Menu_Id] = @main_Menu_Id">
                <DeleteParameters>
                    <asp:Parameter Name="main_Menu_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Teacher_ID" Type="Int32" />
                    <asp:Parameter Name="main_Menu_Name" Type="String" />
                    <asp:Parameter Name="main_image_url" Type="String" />
                    <asp:Parameter Name="main_Menu_Name_en" Type="String" />
                    <asp:Parameter Name="order_id" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Teacher_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Teacher_ID" Type="Int32" />
                    <asp:Parameter Name="main_Menu_Name" Type="String" />
                    <asp:Parameter Name="main_image_url" Type="String" />
                    <asp:Parameter Name="main_Menu_Name_en" Type="String" />
                    <asp:Parameter Name="order_id" Type="Int32" />
                    <asp:Parameter Name="main_Menu_Id" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="main_Menu_Id" DataSourceID="SqlDataSource111" ForeColor="#333333" GridLines="None" Width="100%" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="main_Menu_Id" HeaderText="main_Menu_Id" SortExpression="main_Menu_Id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Teacher_ID" HeaderText="Teacher_ID" SortExpression="Teacher_ID" />
                    <asp:BoundField DataField="main_Menu_Name" HeaderText="main_Menu_Name" SortExpression="main_Menu_Name" />
                    <asp:BoundField DataField="main_image_url" HeaderText="main_image_url" SortExpression="main_image_url" />
                    <asp:BoundField DataField="main_Menu_Name_en" HeaderText="main_Menu_Name_en" SortExpression="main_Menu_Name_en" />
                    <asp:BoundField DataField="order_id" HeaderText="order_id" SortExpression="order_id" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource112" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_sub] WHERE [Sub_Menu_ID] = @Sub_Menu_ID" InsertCommand="INSERT INTO [Menu_sub] ([Main_Menu_ID], [Name_Sub_menu], [Url_link], [sub_image_url], [En], [tooltip], [degree]) VALUES (@Main_Menu_ID, @Name_Sub_menu, @Url_link, @sub_image_url, @En, @tooltip, @degree)" SelectCommand="SELECT Sub_Menu_ID, Main_Menu_ID, Name_Sub_menu, Url_link, sub_image_url, En, tooltip, degree FROM Menu_sub WHERE (Main_Menu_ID = @Main_Menu_ID) ORDER BY degree" UpdateCommand="UPDATE [Menu_sub] SET [Main_Menu_ID] = @Main_Menu_ID, [Name_Sub_menu] = @Name_Sub_menu, [Url_link] = @Url_link, [sub_image_url] = @sub_image_url, [En] = @En, [tooltip] = @tooltip, [degree] = @degree WHERE [Sub_Menu_ID] = @Sub_Menu_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Main_Menu_ID" Type="Int32" />
                    <asp:Parameter Name="Name_Sub_menu" Type="String" />
                    <asp:Parameter Name="Url_link" Type="String" />
                    <asp:Parameter Name="sub_image_url" Type="String" />
                    <asp:Parameter Name="En" Type="String" />
                    <asp:Parameter Name="tooltip" Type="String" />
                    <asp:Parameter Name="degree" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView3" Name="Main_Menu_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Main_Menu_ID" Type="Int32" />
                    <asp:Parameter Name="Name_Sub_menu" Type="String" />
                    <asp:Parameter Name="Url_link" Type="String" />
                    <asp:Parameter Name="sub_image_url" Type="String" />
                    <asp:Parameter Name="En" Type="String" />
                    <asp:Parameter Name="tooltip" Type="String" />
<asp:Parameter Name="degree" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Sub_Menu_ID" DataSourceID="SqlDataSource112" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Sub_Menu_ID" HeaderText="Sub_Menu_ID" InsertVisible="False" ReadOnly="True" SortExpression="Sub_Menu_ID" />
                    <asp:BoundField DataField="Main_Menu_ID" HeaderText="Main_Menu_ID" SortExpression="Main_Menu_ID" />
                    <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree" />
                    <asp:BoundField DataField="Name_Sub_menu" HeaderText="Name_Sub_menu" SortExpression="Name_Sub_menu" />
                    <asp:BoundField DataField="Url_link" HeaderText="Url_link" SortExpression="Url_link" />
                    <asp:BoundField DataField="sub_image_url" HeaderText="sub_image_url" SortExpression="sub_image_url" />
                    <asp:BoundField DataField="En" HeaderText="En" SortExpression="En" />
                    <asp:BoundField DataField="tooltip" HeaderText="tooltip" SortExpression="tooltip" />
                    <asp:CommandField ShowDeleteButton="True" />
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
        </div>
    </form>
</body>
</html>
