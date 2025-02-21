<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="mybar4.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" SelectCommand="SELECT Menu_Main.main_Menu_Name, Menu_Main.main_image_url, Menu_Main.main_Menu_Id, Menu_Main.Teacher_ID, menu_users.mobile, '&lt;img src=&quot;' + Menu_Main.main_image_url + '&quot; alt=&quot;&quot;  class=&quot;img&quot;/&gt;' + Menu_Main.main_Menu_Name_en AS name_en, '&lt;img src=&quot;' + Menu_Main.main_image_url + '&quot; alt=&quot;&quot;  class=&quot;img&quot;/&gt;' + Menu_Main.main_Menu_Name AS name_ar, Menu_Main.main_Menu_Name_en FROM Menu_Main INNER JOIN menu_users ON Menu_Main.Teacher_ID = menu_users.User_ID WHERE (menu_users.mobile = '0503659101') ORDER BY Menu_Main.order_id">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="teacherId" />
            </SelectParameters>
        </asp:SqlDataSource>

            <%: Title %>.<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="radioListTable" DataSourceID="SqlDataSource1" DataTextField="Expr1" DataValueField="main_Menu_Id" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" CellPadding="5">
                            </asp:RadioButtonList>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" SelectCommand="SELECT Menu_Main.main_Menu_Name, Menu_Main.main_image_url, Menu_Main.main_Menu_Id, Menu_Main.Teacher_ID, menu_users.mobile, '&lt;img src=&quot;' + Menu_Main.main_image_url + '&quot; alt=&quot;&quot;  class=&quot;img&quot;/&gt;' + Menu_Main.main_Menu_Name_en AS name_en, '&lt;img src=&quot;' + Menu_Main.main_image_url + '&quot; alt=&quot;&quot;  class=&quot;img&quot;/&gt;' + Menu_Main.main_Menu_Name AS name_ar, Menu_Main.main_Menu_Name_en FROM Menu_Main INNER JOIN menu_users ON Menu_Main.Teacher_ID = menu_users.User_ID WHERE (menu_users.mobile = '0503659101') ORDER BY Menu_Main.order_id">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="teacherId" />
            </SelectParameters>
        </asp:SqlDataSource>

                        </h2>
        <h3>Your application description page.</h3>
        <p>Use this area to provide additional information.</p>
    </main>
    <style>
        .img {
            max-width:50px;
            max-height:50px;
        }
    </style>
</asp:Content>
