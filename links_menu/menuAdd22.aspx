<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuAdd22.aspx.cs" Inherits="mybar3.links_menu.menuAdd2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style> 
     
     
        .auto-style1 {
            width: 100%;
        }
          .pan0 {
  float: right;
    clear: none;
            width:180px;
          
            padding:5px;
            vertical-align:central;
            margin:10px;
            border-radius:20px;
         }

        .none {
            display:none
        }
        .bt{
            background-color:black;
            color:white;
            height:35px;
            
             text-decoration: none;

            
             border-radius: 20px;
            vertical-align:auto;
            text-align: center;
           
/**/            
            box-shadow: 2px 2px 2px #908e8e;
            font-weight: 700;
        }
        .bt:hover{
            background-color:yellow;
            color:black;
        }
        .auto-style5 {
            color: #FF0000;
            font-size: medium;
        }
        .auto-style6 {
            text-align: right;
            width: 226px;
        }
        .auto-style7 {
            width: 226px;
        }
        .auto-style8 {
            height: 40px;
            width: 226px;
            text-align: left;
        }
        .auto-style9 {
            width: 226px;
            text-align: left;
        }
     .auto-style10 {
         text-align: center;
     }
     .auto-style11 {
         height: 40px;
         text-align: center;
         width: 146px;
     }
     .auto-style12 {
         text-align: center;
         width: 158px;
     }
     .auto-style13 {
         height: 40px;
         text-align: center;
         width: 158px;
     }
     .auto-style15 {
         text-align: center;
         width: 146px;
     }
     .auto-style16 {
         width: 146px;
     }
     .auto-style17 {
         font-size: x-large;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="auto-style10">

     <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <asp:SqlDataSource ID="SqlDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_Main] WHERE [main_Menu_Id] = @main_Menu_Id" 
            InsertCommand="INSERT INTO [Menu_Main] ([Teacher_ID], [main_Menu_Name], [main_image_url]) VALUES (@Teacher_ID, @main_Menu_Name, @main_image_url)" 
        SelectCommand="SELECT main_Menu_Id, main_Menu_Name FROM Menu_Main WHERE (Teacher_ID = @TEACHER)" UpdateCommand="UPDATE [Menu_Main] SET [Teacher_ID] = @Teacher_ID, [main_Menu_Name] = @main_Menu_Name, [main_image_url] = @main_image_url WHERE [main_Menu_Id] = @main_Menu_Id">
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
    
                    
                    <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text="اضافة"></asp:Label>
            </strong>
    
                    
                    <asp:Panel ID="Panel5" runat="server"   Width="91%" BackColor="#FFFF99" CssClass="pan0">
                        <div class="auto-style10">
                            القائمة الفرعية Sub-menu
                            <br />
                            <br />
                        </div>

                        <table class="auto-style1">
                    <tr>
                        <td class="auto-style15">القائمة الرئيسية</td>
                        <td class="auto-style7">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID=""      Width="100%" DataTextField="main_Menu_Name" DataValueField="main_Menu_Id" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style12">Main_Menu</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">اسم الموقع</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="Name_Sub_menuTextBox" runat="server" Text='<%# Bind("Name_Sub_menu") %>' Width="100%" />
                            <br />
                            <strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Name_Sub_menuTextBox" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Maximum 40 characters allowed." ForeColor="Red" ValidationExpression="^[\s\S]{0,40}$">
                                <asp:Image ID="Image3" runat="server"  ImageUrl="https://cdn-icons-png.flaticon.com/512/5368/5368327.png" Width="30px" />
                                    Maximum 40 characters allowed.
                            </asp:RegularExpressionValidator>
                            <br />
                            </strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name_Sub_menuTextBox" ErrorMessage="* required "></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style12">Name_Sub_menu</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">رابط الموقع</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="Url_linkTextBox" runat="server" Text='<%# Bind("Url_link") %>' Width="100%" />
                            <br />
                            <strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="Url_linkTextBox" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Maximum 150 characters allowed." ForeColor="Red" ValidationExpression="^[\s\S]{0,180}$">
                                <asp:Image ID="Image4" runat="server"  ImageUrl="https://cdn-icons-png.flaticon.com/512/5368/5368327.png" Width="30px" />
                                    Maximum 180 characters allowed.
                            </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Url_linkTextBox" ErrorMessage="* required "></asp:RequiredFieldValidator>
                            </strong>
                        </td>
                        <td class="auto-style13">Url_link</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">صورة للموقع</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="sub_image_urlTextBox" runat="server" Text='<%# Bind("sub_image_url") %>' Width="100%" />
                            <br />
                            <strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="sub_image_urlTextBox" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Maximum 140 characters allowed." ForeColor="Red" ValidationExpression="^[\s\S]{0,140}$">
                                <asp:Image ID="Image5" runat="server"  ImageUrl="https://cdn-icons-png.flaticon.com/512/5368/5368327.png" Width="30px" />
                                    Maximum 100 characters allowed.

                            </asp:RegularExpressionValidator>
                            </strong>
                        </td>
                        <td class="auto-style12">sub_image_url</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">اسم الموقع بالانجليزية</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("En") %>' Width="100%"></asp:TextBox>
                            <br />
                            <strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox2" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Maximum 40 characters allowed." ForeColor="Red" ValidationExpression="^[\s\S]{0,40}$">
                                  <asp:Image ID="Image6" runat="server"  ImageUrl="https://cdn-icons-png.flaticon.com/512/5368/5368327.png" Width="30px" />
                                    Maximum 40 characters allowed.

                            </asp:RegularExpressionValidator>
                            </strong>
                        </td>
                        <td class="auto-style12">English name</td>
                    </tr>
                            <tr>
                                <td class="auto-style16">نبذة عن الموقع</td>
                                <td class="auto-style9">
                                    <asp:TextBox ID="tooltip2" runat="server" Text='<%# Bind("En") %>' Width="100%" Height="47px" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <strong>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1011" runat="server" ControlToValidate="tooltip2" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Maximum 250 characters allowed." ForeColor="Red" ValidationExpression="^[\s\S]{0,250}$">
                                <asp:Image ID="Image7" runat="server"  ImageUrl="https://cdn-icons-png.flaticon.com/512/5368/5368327.png" Width="30px" />
                                    Maximum 100 characters allowed.
                            </asp:RegularExpressionValidator>
                                    </strong>
                                    <br />
                                    </td>
                                <td class="auto-style12">About the site</td>
                            </tr>
                </table>
                        <asp:Panel ID="Panel_update_btn" runat="server" Visible="False">
                            <asp:LinkButton ID="InsertButton0" runat="server" BackColor="Maroon" CausesValidation="True" CommandName="Insert" CssClass="bt" OnClick="InsertButton0_Click" Text="Update تحديث" Width="100px" />
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="InsertButton1" runat="server" BackColor="Maroon" CausesValidation="True" CommandName="Insert" CssClass="bt" OnClick="InsertButton1_Click" Text="Cancel  الغاء" Width="100px" />
                        </asp:Panel>
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert اضافة" CssClass="bt" Width="100px" OnClick="InsertButton_Click" />
         
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Sub_Menu_ID" DataSourceID="SqlDataSource2" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="Sub_Menu_ID" HeaderText="Sub_Menu_ID" InsertVisible="False" ReadOnly="True" SortExpression="Sub_Menu_ID" />
                                <asp:BoundField DataField="Main_Menu_ID" HeaderText="Main_Menu_ID" SortExpression="Main_Menu_ID" />
                                <asp:BoundField DataField="Name_Sub_menu" HeaderText="Name_Sub_menu" SortExpression="Name_Sub_menu" />
                                <asp:BoundField DataField="Url_link" HeaderText="Url_link" SortExpression="Url_link" />
                                <asp:BoundField DataField="sub_image_url" HeaderText="sub_image_url" SortExpression="sub_image_url" />
                                <asp:BoundField DataField="En" HeaderText="En" SortExpression="En" />
                                <asp:BoundField DataField="tooltip" HeaderText="tooltip" SortExpression="tooltip" />
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="if (!confirm('Are you sure you want delete?')) return false;" ></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
         
    </asp:Panel>
 
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_sub] WHERE [Sub_Menu_ID] = @Sub_Menu_ID" InsertCommand="INSERT INTO Menu_sub(Main_Menu_ID, Name_Sub_menu, Url_link, sub_image_url, En, tooltip) VALUES (@Main_Menu_ID, @Name_Sub_menu, @Url_link, @sub_image_url, @En, @tooltip)" SelectCommand="SELECT Sub_Menu_ID, Main_Menu_ID, Name_Sub_menu, Url_link, sub_image_url, En, tooltip FROM Menu_sub WHERE (Main_Menu_ID = @main)" UpdateCommand="UPDATE Menu_sub SET Name_Sub_menu = @Name_Sub_menu, Url_link = @Url_link, sub_image_url = @sub_image_url, tooltip = @tooltip, En = @en WHERE (Sub_Menu_ID = @Sub_Menu_ID)">
        <DeleteParameters>
            <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Main_Menu_ID" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="Name_Sub_menuTextBox" Name="Name_Sub_menu" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Url_linkTextBox" Name="Url_link" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="sub_image_urlTextBox" Name="sub_image_url" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="En" PropertyName="Text" />
            <asp:ControlParameter ControlID="tooltip2" DefaultValue="" Name="tooltip" PropertyName="Text" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="main" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="Name_Sub_menuTextBox" Name="Name_Sub_menu" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Url_linkTextBox" Name="Url_link" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="sub_image_urlTextBox" Name="sub_image_url" PropertyName="Text" Type="String" />
            <asp:SessionParameter Name="Sub_Menu_ID" SessionField="sub_mn_id" Type="Int32" />
            <asp:ControlParameter ControlID="tooltip2" Name="tooltip" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="en" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

