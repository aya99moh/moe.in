<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="mybar3.links_menu.register" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
<style>
    .pp{
        position:absolute;
        top:0px;
        left:0px;
        width:100%;
        height:100vh;
        z-index:-1;
    }
        </style>
</head>
<body style=" justify-content: center;display: flex;background-color:grey">
    <form id="form1" runat="server">
<asp:Panel ID="Panel1" runat="server" CssClass="pp"> </asp:Panel>
  <div class="container">


    <h2>User Registration</h2>
      <div class="form-group">
        <label for="username">Username:</label>
          <asp:TextBox ID="username" runat="server"></asp:TextBox>
     
        <label for="password">Password:</label>
          <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
     
        <label for="fullname">Full Name:</label>
          <asp:TextBox ID="fullname" runat="server"></asp:TextBox>
     
        <label for="mobile">Mobile:</label>
        <asp:TextBox ID="mobile0" runat="server" TextMode="Number"></asp:TextBox>

 <label for="mobile">background color:</label>
        <asp:TextBox ID="color" runat="server" TextMode="Color" AutoPostBack="True" OnTextChanged="color_TextChanged">#698674</asp:TextBox>

          

      </div>
        <asp:Button ID="Button1"  class="btn" runat="server" Text="Register" OnClick="Button1_Click" />
      <br />
      <br />
      already have an account<br />
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style2" Height="30px" PostBackUrl="~/links_menu/login.aspx" Width="70px"> login</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [menu_users] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO menu_users(UserName, pass, mobile, fullname, color) VALUES (@UserName, @pass, @mobile, @fullname, @color)" SelectCommand="SELECT * FROM [menu_users]" UpdateCommand="UPDATE [menu_users] SET [User_ID] = @User_ID, [pass] = @pass, [mobile] = @mobile, [fullname] = @fullname WHERE [UserName] = @UserName">
            <DeleteParameters>
                <asp:Parameter Name="UserName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="username" Name="UserName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="password" Name="pass" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="mobile0" Name="mobile" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fullname" Name="fullname" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="color" Name="color" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="User_ID" Type="Int32" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="fullname" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
     

  </div>

    </form>
</body>
</html>
