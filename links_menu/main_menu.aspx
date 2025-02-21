<%@ Page Title="" Language="C#" MasterPageFile="~/links_menu/links_menu.Master" AutoEventWireup="true" CodeBehind="main_menu.aspx.cs" Inherits="alameer2022_11_12.forms.links_menu.main_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .none {
            display:none
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_Main] WHERE [main_Menu_Id] = @main_Menu_Id" 
            InsertCommand="INSERT INTO Menu_Main(Teacher_ID, main_Menu_Name, main_image_url) VALUES (@Teacher_ID, @main_Menu_Name, @image1)" 
            SelectCommand="SELECT main_Menu_Id, main_Menu_Name, main_image_url FROM Menu_Main" UpdateCommand="UPDATE Menu_Main SET main_Menu_Name = @main_Menu_Name, main_image_url = @image1 WHERE (main_Menu_Id = @ID)">
            <DeleteParameters>
                <asp:Parameter Name="main_Menu_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Teacher_ID" DefaultValue="1" />
                <asp:SessionParameter DefaultValue="" Name="main_Menu_Name" SessionField="name1" />
                <asp:SessionParameter Name="image1" SessionField="image1" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="main_Menu_Name" />
                <asp:Parameter Name="image1" />
                <asp:Parameter Name="ID" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_Main] WHERE [main_Menu_Id] = @main_Menu_Id" 
            InsertCommand="INSERT INTO Menu_Main(Teacher_ID, main_Menu_Name, main_image_url) VALUES (@Teacher_ID, @main_Menu_Name, @image1)" 
        SelectCommand="SELECT [main_Menu_Id], [main_Menu_Name], [main_image_url] FROM [Menu_Main]" UpdateCommand="UPDATE [Menu_Main] SET [main_Menu_Name] = @main_Menu_Name, [main_image_url] = @main_image_url WHERE [main_Menu_Id] = @main_Menu_Id">
        <DeleteParameters>
            <asp:Parameter Name="main_Menu_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
                <asp:Parameter Name="Teacher_ID" DefaultValue="1" />
                <asp:SessionParameter DefaultValue="" Name="main_Menu_Name" SessionField="name1" />
                <asp:SessionParameter Name="image1" SessionField="image1" />
            </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="main_Menu_Name" Type="String" />
            <asp:Parameter Name="main_image_url" Type="String" />
            <asp:Parameter Name="main_Menu_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="main_Menu_Id" DataSourceID="SqlDataSource0" ForeColor="#333333" GridLines="None" ShowFooter="True" style="text-align: left" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="insert" Width="100%" />
                </FooterTemplate>
                <ItemTemplate>
                   <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <ItemStyle CssClass="100"   />
            </asp:TemplateField>
            <asp:BoundField DataField="main_Menu_Id" HeaderText="main_Menu_Id" InsertVisible="False" ReadOnly="True" SortExpression="main_Menu_Id" >
            <FooterStyle CssClass="none" />
            <HeaderStyle CssClass="none" />
            <ItemStyle CssClass="none" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="main_Menu_Name" SortExpression="main_Menu_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("main_Menu_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="name1" runat="server"  Width="100%"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("main_Menu_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="main_image_url" SortExpression="main_image_url">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("main_image_url") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="image1" runat="server" Height="100%" Width="100%"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("main_image_url") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="350px" />
                <ItemStyle Width="200px" />
            </asp:TemplateField>
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_sub] WHERE [Sub_Menu_ID] = @Sub_Menu_ID" InsertCommand="INSERT INTO [Menu_sub] ([Main_Menu_ID], [Name_Sub_menu], [Url_link], [sub_image_url]) VALUES (@Main_Menu_ID, @Name_Sub_menu, @Url_link, @sub_image_url)" SelectCommand="SELECT Sub_Menu_ID, Main_Menu_ID, Name_Sub_menu, Url_link, sub_image_url FROM Menu_sub WHERE (Main_Menu_ID = @main)" UpdateCommand="UPDATE [Menu_sub] SET [Main_Menu_ID] = @Main_Menu_ID, [Name_Sub_menu] = @Name_Sub_menu, [Url_link] = @Url_link, [sub_image_url] = @sub_image_url WHERE [Sub_Menu_ID] = @Sub_Menu_ID">
        <DeleteParameters>
            <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Main_Menu_ID" PropertyName="SelectedValue" Type="Int32" />
            <asp:SessionParameter Name="Name_Sub_menu" SessionField="name1" Type="String" />
            <asp:SessionParameter Name="Url_link" SessionField="link1" Type="String" />
            <asp:SessionParameter DefaultValue="" Name="sub_image_url" SessionField="image1" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="main" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Main_Menu_ID" Type="Int32" />
            <asp:Parameter Name="Name_Sub_menu" Type="String" />
            <asp:Parameter Name="Url_link" Type="String" />
            <asp:Parameter Name="sub_image_url" Type="String" />
            <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Sub_Menu_ID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" ShowFooter="True">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:Button ID="Button2" runat="server" Text="insert" Width="100%" OnClick="Button2_Click" />
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Sub_Menu_ID" HeaderText="Sub_Menu_ID" InsertVisible="False" ReadOnly="True" SortExpression="Sub_Menu_ID" >
            <FooterStyle CssClass="none" />
            <HeaderStyle CssClass="none" />
            <ItemStyle CssClass="none" />
            </asp:BoundField>
            <asp:BoundField DataField="Main_Menu_ID" HeaderText="Main_Menu_ID" SortExpression="Main_Menu_ID" >
            <FooterStyle CssClass="none" />
            <HeaderStyle CssClass="none" />
            <ItemStyle CssClass="none" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Name_Sub_menu" SortExpression="Name_Sub_menu">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name_Sub_menu") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="name1" runat="server" Height="100%" Width="100%"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name_Sub_menu") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Url_link" SortExpression="Url_link">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Url_link") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="link1" runat="server" Height="100%" Width="100%"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Url_link") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="sub_image_url" SortExpression="sub_image_url">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("sub_image_url") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="image1" runat="server" Height="100%" Width="100%"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("sub_image_url") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="عودة   Go Back" />
    <br />
</asp:Content>
