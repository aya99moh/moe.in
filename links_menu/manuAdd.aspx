 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manuAdd.aspx.cs" Inherits="alameer2022_11_12.forms.links_menu.manuAdd" %>

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
            
        }
       .auto-style7 {
         text-align: center;
     }
       </style>
</head>
<body>
    <form id="form1" runat="server">    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
 
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <asp:SqlDataSource ID="SqlDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_Main] WHERE [main_Menu_Id] = @main_Menu_Id" 
            InsertCommand="INSERT INTO Menu_Main(Teacher_ID, main_Menu_Name) VALUES (@Teacher_ID, @main_Menu_Name)" 
        SelectCommand="SELECT main_Menu_Name, main_Menu_Id FROM Menu_Main WHERE (Teacher_ID = @TEACHER)" UpdateCommand="UPDATE Menu_Main SET main_Menu_Name = @main_Menu_Name WHERE (main_Menu_Id = @main_Menu_Id)">
        <DeleteParameters>
            <asp:Parameter Name="main_Menu_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
                <asp:SessionParameter DefaultValue="" Name="Teacher_ID" SessionField="UserIDedit" Type="Int32" />
                <asp:Parameter Name="main_Menu_Name" />
            </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="TEACHER" SessionField="UserIDedit" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="main_Menu_Name" />
            <asp:Parameter Name="main_Menu_Id" />
        </UpdateParameters>
    </asp:SqlDataSource>
  


   
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource0" InsertItemPosition="FirstItem" DataKeyNames="main_Menu_Id" EnableTheming="False">
        <AlternatingItemTemplate>
            <tr style="background-color:#FAFAD2; color: #284775;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" OnClientClick="if (!confirm('Are you sure you want delete?')) return false;"  CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="main_Menu_NameLabel" runat="server" Text='<%# Eval("main_Menu_Name") %>' Width="312px" />
                </td>
                <td style="display:none" >
                    <asp:Label ID="main_Menu_IdLabel" runat="server" Text='<%# Eval("main_Menu_Id") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#FFCC66; color: #000080;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="main_Menu_NameTextBox" runat="server" Text='<%# Bind("main_Menu_Name") %>' />
                </td>
                <td style="display:none" >
                    <asp:Label ID="main_Menu_IdLabel1" runat="server" Text='<%# Eval("main_Menu_Id") %>' />
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
                <td>
                    <asp:TextBox ID="main_Menu_NameTextBox" runat="server" Text='<%# Bind("main_Menu_Name") %>' Width="312px" />
                </td>
                <td style="display:none" >&nbsp;</td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#FFFBD6; color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="main_Menu_NameLabel" runat="server" Text='<%# Eval("main_Menu_Name") %>' Width="312px" />
                </td>
                <td style="display:none" >
                    <asp:Label ID="main_Menu_IdLabel" runat="server" Text='<%# Eval("main_Menu_Id") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#FFFBD6; color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">main Menu Name</th>
                                <th style="display:none" runat ="server">main_Menu_Id</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
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
            <tr style="background-color:#FFCC66; font-weight: bold;color: #000080;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="main_Menu_NameLabel" runat="server" Text='<%# Eval("main_Menu_Name") %>' />
                </td>
                <td style="display:none" >
                    <asp:Label ID="main_Menu_IdLabel" runat="server" Text='<%# Eval("main_Menu_Id") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    </form>
</body>
</html>
