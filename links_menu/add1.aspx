<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add1.aspx.cs" Inherits="mybar3.links_menu.add1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_Main] WHERE [main_Menu_Id] = @main_Menu_Id" 
            InsertCommand="INSERT INTO [Menu_Main] ([Teacher_ID], [main_Menu_Name], [main_image_url]) VALUES (@Teacher_ID, @main_Menu_Name, @main_image_url)" 
        SelectCommand="SELECT main_Menu_Name, main_image_url FROM Menu_Main WHERE (Teacher_ID = @TEACHER)" UpdateCommand="UPDATE [Menu_Main] SET [Teacher_ID] = @Teacher_ID, [main_Menu_Name] = @main_Menu_Name, [main_image_url] = @main_image_url WHERE [main_Menu_Id] = @main_Menu_Id">
        <DeleteParameters>
            <asp:Parameter Name="main_Menu_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
                <asp:SessionParameter DefaultValue="" Name="Teacher_ID" SessionField="UserIDedit" Type="Int32" />
                <asp:ControlParameter ControlID="main_Menu_NameTextBox" DefaultValue="" Name="main_Menu_Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="main_image_urlTextBox" Name="main_image_url" PropertyName="Text" Type="String" />
            </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="TEACHER" SessionField="UserIDedit" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Teacher_ID" Type="Int32" />
            <asp:Parameter Name="main_Menu_Name" Type="String" />
            <asp:Parameter Name="main_image_url" Type="String" />
            <asp:Parameter Name="main_Menu_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource0" InsertItemPosition="FirstItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FAFAD2;color: #284775;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="main_Menu_NameLabel" runat="server" Text='<%# Eval("main_Menu_Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="main_image_urlLabel" runat="server" Text='<%# Eval("main_image_url") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #FFCC66;color: #000080;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:TextBox ID="main_Menu_NameTextBox" runat="server" Text='<%# Bind("main_Menu_Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="main_image_urlTextBox" runat="server" Text='<%# Bind("main_image_url") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="main_Menu_NameTextBox555" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Maximum 60 characters allowed." ForeColor="Red" ValidationExpression="^[\s\S]{0,60}$">
                                    <asp:Image ID="Image1" runat="server"  ImageUrl="https://cdn-icons-png.flaticon.com/512/5368/5368327.png" Width="30px" />
                                    Maximum 60 characters allowed.
                                </asp:RegularExpressionValidator>

                                <asp:TextBox ID="main_Menu_NameTextBox555" runat="server" Text='<%# Bind("main_Menu_Name") %>' />
                            </td>
                            <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="main_image_urlTextBox123" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Maximum 60 characters allowed." ForeColor="Red" ValidationExpression="^[\s\S]{0,60}$">
                                    <asp:Image ID="Image2" runat="server"  ImageUrl="https://cdn-icons-png.flaticon.com/512/5368/5368327.png" Width="30px" />
                                    Maximum 120 characters allowed.
                                </asp:RegularExpressionValidator>

                                <asp:TextBox ID="main_image_urlTextBox123" runat="server" Text='<%# Bind("main_image_url") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #FFFBD6;color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="main_Menu_NameLabel" runat="server" Text='<%# Eval("main_Menu_Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="main_image_urlLabel" runat="server" Text='<%# Eval("main_image_url") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                            <th runat="server"></th>
                                            <th runat="server">Name</th>
                                            <th runat="server">image url</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="main_Menu_NameLabel" runat="server" Text='<%# Eval("main_Menu_Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="main_image_urlLabel" runat="server" Text='<%# Eval("main_image_url") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
