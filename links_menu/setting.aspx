ss<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setting.aspx.cs" Inherits="mybar3.links_menu.setting" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
<style>

        .auto-style5 {
        text-align: center;
    }
        .none{
            display:none;
        }

        </style>
</head>
<body style=" justify-content: center;display: flex;background-color:grey">
    <form id="form1" runat="server">
  <div class="container">
    <h2>User Data Edit</h2>
     
&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource2" Height="50px" OnItemUpdated="DetailsView1_ItemUpdated" Width="100%" CellPadding="4" DefaultMode="Edit" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
          <EditRowStyle BackColor="#7C6F57" />
          <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
          <Fields>
              <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
              <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
              <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
              <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
              <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
              <asp:TemplateField HeaderText="color" SortExpression="color">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("color") %>' TextMode="Color"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("color") %>'></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("color") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="week" HeaderText="week" SortExpression="week" />
              <asp:TemplateField HeaderText="forecolor" SortExpression="forecolor">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("forecolor") %>' TextMode="Color"></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("forecolor") %>'></asp:TextBox>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("forecolor") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:CommandField ShowEditButton="True" />
          </Fields>
          <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#E3EAEB" />
      </asp:DetailsView>
      <div class="auto-style5">
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [menu_users] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [menu_users] ([UserName], [pass], [mobile], [fullname], [color], [week], [forecolor]) VALUES (@UserName, @pass, @mobile, @fullname, @color, @week, @forecolor)" SelectCommand="SELECT * FROM [menu_users] WHERE ([User_ID] = @User_ID)" UpdateCommand="UPDATE [menu_users] SET [UserName] = @UserName, [pass] = @pass, [mobile] = @mobile, [fullname] = @fullname, [color] = @color, [week] = @week, [forecolor] = @forecolor WHERE [User_ID] = @User_ID">
              <DeleteParameters>
                  <asp:Parameter Name="User_ID" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="UserName" Type="String" />
                  <asp:Parameter Name="pass" Type="String" />
                  <asp:Parameter Name="mobile" Type="String" />
                  <asp:Parameter Name="fullname" Type="String" />
                  <asp:Parameter Name="color" Type="String" />
                  <asp:Parameter Name="week" Type="Int16" />
                  <asp:Parameter Name="forecolor" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:SessionParameter Name="User_ID" SessionField="UserIDedit" Type="Int32" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="UserName" Type="String" />
                  <asp:Parameter Name="pass" Type="String" />
                  <asp:Parameter Name="mobile" Type="String" />
                  <asp:Parameter Name="fullname" Type="String" />
                  <asp:Parameter Name="color" Type="String" />
                  <asp:Parameter Name="week" Type="Int16" />
                  <asp:Parameter Name="forecolor" Type="String" />
                  <asp:Parameter Name="User_ID" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SchID" DataSourceID="SqlDataSource3" Caption="بداية الفصل الدراسي" CellPadding="4" ForeColor="#333333" GridLines="None" ShowHeader="False">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:CommandField ShowEditButton="True" />
                  <asp:BoundField DataField="SchID" HeaderText="SchID" InsertVisible="False" ReadOnly="True" SortExpression="SchID" >
                  <FooterStyle CssClass="none" />
                  <HeaderStyle CssClass="none" />
                  <ItemStyle CssClass="none" />
                  </asp:BoundField>
                  <asp:BoundField DataField="school_ID" HeaderText="school_ID" SortExpression="school_ID" >
                  <FooterStyle CssClass="none" />
                  <HeaderStyle CssClass="none" />
                  <ItemStyle CssClass="none" />
                  </asp:BoundField>
                  <asp:TemplateField HeaderText="term_start" SortExpression="term_start">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("term_start", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("term_start", "{0:d}") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
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
      </div>
        </div>
      
      
      
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [SchName] WHERE [SchID] = @SchID" InsertCommand="INSERT INTO [SchName] ([school_ID], [term_start]) VALUES (@school_ID, @term_start)" SelectCommand="SELECT * FROM [SchName] WHERE ([SchID] = @SchID)" UpdateCommand="UPDATE [SchName] SET [school_ID] = @school_ID, [term_start] = @term_start WHERE [SchID] = @SchID">
            <DeleteParameters>
                <asp:Parameter Name="SchID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="school_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="term_start" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="SchID" SessionField="UserIDedit" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="school_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="term_start" />
                <asp:Parameter Name="SchID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
      
      
      
    </form>
</body>
</html>
