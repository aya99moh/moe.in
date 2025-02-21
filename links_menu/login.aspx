<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="mybar3.links_menu.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Login</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body style=" justify-content: center;display: flex;background-color:grey">

    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
  <div class="container">
    <h2>User log in</h2>
      <div class="form-group">
        <label for="username">Username:</label>
          <asp:TextBox ID="username" runat="server"></asp:TextBox>
     
        <label for="password">Password:</label>
          <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
     

      </div>
        <asp:Button ID="Button1"  class="btn" runat="server" Text="login" OnClick="Button1_Click" />

         <br /> <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="don't have an account"></asp:Label>
      <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style2" Height="30px" PostBackUrl="~/links_menu/register.aspx" Width="85px"> Register</asp:LinkButton>

      &nbsp;&nbsp;&nbsp;
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">cancel </asp:HyperLink>

  </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [menu_users] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [menu_users] ([UserName], [pass], [mobile], [fullname]) VALUES (@UserName, @pass, @mobile, @fullname)" SelectCommand="SELECT User_ID, UserName, pass, mobile, fullname FROM menu_users WHERE (UserName = @user ) AND (pass = @pass)" UpdateCommand="UPDATE [menu_users] SET [User_ID] = @User_ID, [pass] = @pass, [mobile] = @mobile, [fullname] = @fullname WHERE [UserName] = @UserName">
            <DeleteParameters>
                <asp:Parameter Name="UserName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="username" Name="UserName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="password" Name="pass" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="mobile0" Name="mobile" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fullname" Name="fullname" PropertyName="Text" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="username" Name="user" PropertyName="Text" />
                <asp:ControlParameter ControlID="password" Name="pass" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="User_ID" Type="Int32" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="fullname" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
          <div >
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" CssClass="none">
            <Columns>
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
            </Columns>
        </asp:GridView>
        </div>
      
        </asp:Panel>
     </form>
</body>
</html>
