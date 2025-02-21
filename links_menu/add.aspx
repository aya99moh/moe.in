<%@ Page Title="" Language="C#" MasterPageFile="~/links_menu/links_menu.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="mybar3.links_menu.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
             
 .radioboxlist radioboxlistStyle
{
font-size:xx-large;
padding: 2px;
}
.radioboxlist label {
   
color: #3E3928;




/*clear: left;
*/margin-right: 3px;
margin-left: 3px;
}
.radioboxlist label:hover
{
color: #CC3300;
background: #D1CFC2;
}
input:checked + label {
color: #CC3300;
background-color:yellow;
}



</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="عودة   Go Back" CssClass="btn" Width="200px" Height="35px" />
  
    <asp:Panel ID="Panel5" runat="server">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="radioboxlist" Font-Bold="True"   CellPadding="15" CellSpacing="0" RepeatDirection="Horizontal" Width="100%" BackColor="#99CCFF" >
            <asp:ListItem Value="1" Selected="True"> القائمة الرئيسية</asp:ListItem>
            <asp:ListItem Value="2">القائمة  الفرعية</asp:ListItem>
        </asp:RadioButtonList>
    </asp:Panel>
  
   
    <iframe name="myIframe" id="myIframe" width="600px" height="800" runat="server" style="border:none"  dir="rtl"></iframe>

           
    
</asp:Content>
