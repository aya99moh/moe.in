<%@ Page Title="" Language="C#" MasterPageFile="~/links_menu/links_menu.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="alameer2022_11_12.forms.links_menu.edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .none {
            display:none
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="عودة   Go Back" CssClass="btn" Width="200px" Height="35px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_Main] WHERE [main_Menu_Id] = @main_Menu_Id" InsertCommand="INSERT INTO [Menu_Main] ([Teacher_ID], [main_Menu_Name], [main_image_url]) VALUES (@Teacher_ID, @main_Menu_Name, @main_image_url)" SelectCommand="SELECT main_Menu_Id, Teacher_ID, main_Menu_Name, main_image_url FROM Menu_Main WHERE (Teacher_ID = @userid)" UpdateCommand="UPDATE Menu_Main SET main_Menu_Name = @main_Menu_Name, main_image_url = @main_image_url WHERE (main_Menu_Id = @main_Menu_Id)">
        <DeleteParameters>
            <asp:Parameter Name="main_Menu_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Teacher_ID" Type="Int32" />
            <asp:Parameter Name="main_Menu_Name" Type="String" />
            <asp:Parameter Name="main_image_url" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="UserIDedit" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="main_Menu_Name" />
            <asp:Parameter Name="main_image_url" />
            <asp:Parameter Name="main_Menu_Id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="main_Menu_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="100%" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowEditButton="True"  />

                    <asp:CommandField ShowDeleteButton="True"  />

                    <asp:BoundField DataField="main_Menu_Id" HeaderText="main_Menu_Id" InsertVisible="False" ReadOnly="True" SortExpression="main_Menu_Id" Visible="False" />
                    <asp:BoundField DataField="Teacher_ID" HeaderText="Teacher_ID" SortExpression="Teacher_ID" >
                    <FooterStyle CssClass="none" />
                    <HeaderStyle CssClass="none" />
                    <ItemStyle CssClass="none" />
                    </asp:BoundField>
                    <asp:BoundField DataField="main_Menu_Name" HeaderText="main_Menu_Name" SortExpression="main_Menu_Name" />
                    <asp:BoundField DataField="main_image_url" HeaderText="main_image_url" SortExpression="main_image_url" >
                    <FooterStyle CssClass="none" />
                    <HeaderStyle CssClass="none" />
                    <ItemStyle CssClass="none" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#003300" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>

            <br />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_sub] WHERE [Sub_Menu_ID] = @Sub_Menu_ID" InsertCommand="INSERT INTO [Menu_sub] ([Main_Menu_ID], [Name_Sub_menu], [Url_link], [sub_image_url]) VALUES (@Main_Menu_ID, @Name_Sub_menu, @Url_link, @sub_image_url)" SelectCommand="SELECT Sub_Menu_ID, Main_Menu_ID, Name_Sub_menu, Url_link, sub_image_url, En FROM Menu_sub WHERE (Main_Menu_ID = @Main_Menu_ID)" UpdateCommand="UPDATE Menu_sub SET Main_Menu_ID = @Main_Menu_ID, Name_Sub_menu = @Name_Sub_menu, Url_link = @Url_link, sub_image_url = @sub_image_url, En = @En WHERE (Sub_Menu_ID = @Sub_Menu_ID)">
                <DeleteParameters>
                    <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Main_Menu_ID" Type="Int32" />
                    <asp:Parameter Name="Name_Sub_menu" Type="String" />
                    <asp:Parameter Name="Url_link" Type="String" />
                    <asp:Parameter Name="sub_image_url" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Main_Menu_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Main_Menu_ID" Type="Int32" />
                    <asp:Parameter Name="Name_Sub_menu" Type="String" />
                    <asp:Parameter Name="Url_link" Type="String" />
                    <asp:Parameter Name="sub_image_url" Type="String" />
                    <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
                    <asp:Parameter Name="En" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sub_Menu_ID" DataSourceID="SqlDataSource2" Width="100%">
                <Columns>
                             <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowEditButton="True"  />

                    <asp:BoundField DataField="Sub_Menu_ID" HeaderText="Sub_Menu_ID" InsertVisible="False" ReadOnly="True" SortExpression="Sub_Menu_ID" Visible="False">
                    </asp:BoundField>
                             <asp:TemplateField HeaderText="Main_Menu_ID" SortExpression="Main_Menu_ID">
                                 <EditItemTemplate>
                                     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="main_Menu_Name" DataValueField="main_Menu_Id" SelectedValue='<%# Bind("Main_Menu_ID") %>'>
                                     </asp:DropDownList>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("Main_Menu_ID") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                    <asp:BoundField DataField="Name_Sub_menu" HeaderText="Name_Sub_menu" SortExpression="Name_Sub_menu" />
                    <asp:BoundField DataField="Url_link" HeaderText="Url_link" SortExpression="Url_link" />
                                        <asp:CommandField ShowDeleteButton="True"  />

                    <asp:BoundField DataField="sub_image_url" HeaderText="sub_image_url" SortExpression="sub_image_url" />
                    <asp:BoundField DataField="En" HeaderText="En" SortExpression="En" />

                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
