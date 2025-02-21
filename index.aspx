 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="mybar3.show" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My favoraite مفضلتي</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .but4 {
         
            text-decoration: none;
            cursor: pointer;
            background:none;
            width:20px;
            height:20px;
            
        }

            .but4:hover {
              border: 2px solid white; width:20px;
 height:20px;
            }


        
 @property --p {
  syntax: '<percentage>';
  inherits: false;
  initial-value: 10%;
}
@property --l {
  syntax: '<length>';
  inherits: false;
  initial-value: 10px;
}
@property --a {
  syntax: '<angle>';
  inherits: false;
  initial-value: 10deg;
}
/*تنسيق المربعات*/  
 
.tr_table {
  /*  needed for firefox to have a valid output*/ 
       border-top-left-radius:15px;
  /*cursor:pointer;
/*   border-radius: 8px;
            background-color: lightblue

            /**/ color: black;
             background-color:#c3d0d9;
/**/            vertical-align: central;
            text-align: center;
            box-shadow: 4px 4px 4px #141313;
            border: 1px solid black;
            /*font-size: 14pt;*/
            text-decoration: none;
            font-weight: 600;
            animation-name: slide-in;
            animation-duration: 1s;
            height: 100%;
            width: 100%;
            vertical-align: central;
            /*            background-color:green;
*/ text-align: center;
/* transition-property: background ;
  transition-duration: 700ms;
  transition-timing-function:ease-in;*/
}
.tr_table:hover {
 color:white;            border: 1px solid white;
/**/ /*box-shadow: black 0px -30px 36px -28px inset;*/

                        background-color: #01010f;

}
  





        @keyframes slide-in {
            0% {
/**/                opacity: 0;
                transform: translateY(300%);
/*        transform: rotate(0);
*/

/**/            }
            
            100% {
/**/                opacity: 1;
/**//**/                transform: translateY(0);
/**/           
/*    transform: rotate(360);
*/


            }
        }

   


      


        @keyframes example {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        








        .lbl1 {
            display: block;
            text-decoration: none;
        }

        .none {
            display: none;
        }

        .pan0 {
            font-size: 10pt;
            float: right;
            clear: none;
            width: 150px;
            height: 86px;
            padding: 5px;
            vertical-align: central;
        }

        .pan0_2 {
            font-size: 10pt;
            float: left;
            clear: none;
            width: 150px;
            height: 86px;
            padding: 5px;
            vertical-align: central;
        }

        .img1 {
            max-width: 95%;
/*               border-radius: 10px;
*/
            max-height: 60px;
            margin-left: auto;
            margin-right: auto;
            padding-top: 4px;
            display: block;
/*            background-color:coral;
*/        }


        .lbl1 {
            display: block;
            text-decoration: none;
        }


        /*        radiolis css
*/
        .radioListTable {
            /* Add styles to the entire table */
            border-collapse: collapse;
            /*width: 300px;*/ /* Adjust the width as needed */
        }

            .radioListTable tr {
                /* Add styles to each table row (list item) */
                background-color: white; /* Example background color */
            }

            .radioListTable td {
                /* Add styles to each table cell (radio button and label) */
                padding: 8px;
               /* border: 1px solid #ddd; *//* Example border style */
                 background-color:white;
                border: 1px solid black;
            }

                .radioListTable td:hover {
                    /* Add styles to each table cell (radio button and label) */
                    background-color: gray;
                }

            .radioListTable input[type="radio"] {
                transform: scale(1.2); /* Adjust the scale factor as needed */
            }


            .radioListTable input:checked + label {
                color: black;
                background-color: yellow;
            }

         
        .Panel5_downdroplist {
            display: none;
        }

        .panal_radiolist {
            display: inline-block;
            width: 155px;
/*            background-color: blue;
*/        }
        .back{
              width: 160px;
              position :absolute;
              z-index:-1;
              height :100vh;
              top:0px;
              background-color:lightblue;
        }

        .panal_content {
            display: inline-block;
            width: CALC(100% - 195px);
          
             vertical-align:top;
/*             background-color:yellow;
*/        }
         .panal_but {
     display: inline-block;
     width: 25px;
   
      vertical-align:top;

 }
        .panal1_r {
            direction: rtl;
            vertical-align:initial;
           
        }

        .panal1_l {
          
            direction: ltr;
            vertical-align: text-top;
        }

        @media screen and (max-width: 700px) {
                    .panal_but {
    display: block;
    width: 100%;
  
     vertical-align:top;

}


            .back {
                display:none;
            }
            .panal_radiolist {
                display: none;
            }

            .panal_content {
                width: 100%;
                display: block;
            }


            .Panel5_downdroplist {
                display: block;
                font-size: 8pt;
            }

            .pan0 {
                font-size: 5pt;
                /*float: right;
            clear: none;*/
                width: CALC(33% - 10px);
                height: 60px;
                /*vertical-align: central;*/
                /*                  box-shadow: inset 0 0 3px #f8a100;
*/
            }

            .img1 {
                max-height: 40px;
            }
        }

        .Label1_week0 {
         }

        .auto-style62 {
            text-align: center;
        }
        .auto-style63 {
            height: 20px;
    

    
        }
        .auto-style63:hover {
            height: 80px;
/*            left:0px;
*/
    
        }
        .week {
            width:140px;background-color:black;text-align:center;
             border-radius: 8px;
            /**/ color: white;
             
            vertical-align: central;
         
            box-shadow: 4px 4px 4px #141313;
            border: 1px solid white;
        }
           .img{
       max-height:25px;
       max-width:30px;
   }
        #form1 {
            text-align: center;
        }
    </style>


</head>
<body id="body1" runat="server" style="background-color:#054521">
    <form id="form1" runat="server">
 
  
        
        

               <table style="width:100%">
                   <tr>
                       <td  >

                   
                       </td>
                       <td   class="week">

                         <strong>
                        <asp:Label ID="Label5" runat="server" Text="week" CssClass="Label1_week0" ForeColor="#FF66FF"></asp:Label>
                        <asp:Label ID="Label1_week" runat="server" CssClass="Label1_week" Style=" font-size: xx-large"   Text="ggg" Width="55px" ForeColor="White"></asp:Label>
                    </strong>
                       </td>

                       <td  >

                       </td>
                   </tr>

               </table>
               
            <asp:Panel ID="Panel5_downdroplist" runat="server" CssClass="Panel5_downdroplist">
                <asp:Label ID="Label4" runat="server" Text="القائمة الرئيسية"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="main_Menu_Name" DataValueField="main_Menu_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Label ID="Label3" runat="server" Text="main menu "></asp:Label>
            </asp:Panel>



        <%------------------------------------------------------------------------------%>
  <asp:Panel ID="Panel1" runat="server">
           <%--<div id="back" runat="server" class="back">

 </div>--%>
        

       <asp:Panel ID="Panel_radiolist" runat="server" CssClass="panal_radiolist">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="radioListTable" DataSourceID="SqlDataSource1" DataTextField="main_Menu_Name" DataValueField="main_Menu_Id" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" CellPadding="10">
                            </asp:RadioButtonList>
                        </asp:Panel>



                        <asp:Panel ID="Panel_content" runat="server" Wrap="true" dir="rtl" CssClass="panal_content">


                        </asp:Panel>

                  <asp:Panel ID="Panel5_but" runat="server" CssClass="panal_but">


        <img src="board/me2.gif" class="auto-style63" />
                       <br />
                      <br />
        <asp:ImageButton CssClass="but4" ID="ImageButton3_ar" runat="server" ImageUrl="~/links_menu/log/AR.gif" OnClick="ImageButton3_Click" ToolTip="تغيير اللغة الى العربية" />
                           <asp:ImageButton CssClass="but4" ID="ImageButton3_en" runat="server" ImageUrl="~/links_menu/log/EN.gif" OnClick="ImageButton3_en_Click" ToolTip="change language to english" />


                <asp:HyperLink ID="HyperLink9" runat="server"  ImageUrl="~/links_menu/log/call-end-icon-12803.png" ImageWidth="20px" NavigateUrl="tel: +971503659101" ToolTip="call me" CssClass="but4" >اتصل بنا</asp:HyperLink>
                <asp:HyperLink ID="HyperLink11" runat="server" ImageUrl="~/links_menu/log/whatsapp.png" ImageWidth="20px" NavigateUrl="https://api.whatsapp.com/send/?phone=971503659101&amp;text&amp;type=phone_number&amp;app_absent=0" ToolTip="send whatsapp " CssClass="but4" >whatsapp</asp:HyperLink>
                <asp:HyperLink ID="HyperLink10" runat="server"  ImageUrl="~/links_menu/log/telegram-icon-6242.png" ImageWidth="20px" NavigateUrl="https://t.me/attendance_msa" ToolTip="send telegram" CssClass="but4"  >telegram</asp:HyperLink>
             
                    <asp:HyperLink ID="HyperLink8" runat="server" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8lpmpuyOP8LdsOeWlHrZPO4DlzgQ4g1ZwCw&amp;usqp=CAU" NavigateUrl="~/links_menu/setting.aspx" CssClass="but4" ImageWidth="20px">HyperLink</asp:HyperLink>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageUrl="https://shorturl.at/botHM" OnClick="ImageButton1_Click" Visible="False" CssClass="but4" />
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style59" ImageHeight="20px" NavigateUrl="~/links_menu/add.aspx">Add</asp:HyperLink>
            </asp:Panel>

        </asp:Panel>

        <%------------------------------------------------------------------------------------------------------%> 



        <%--                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("main_Menu_Name") %>'></asp:Label>--%>

      




        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="but4" PostBackUrl="~/links_menu/register.aspx" Visible="False" Width="140px" Height="30px">Create your bar </asp:LinkButton>


        <asp:Panel ID="Panel4" runat="server">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Sub_Menu_ID" DataSourceID="SqlDataSource2" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Name_Sub_menu" HeaderText="Name_Sub_menu" SortExpression="Name_Sub_menu" />
                    <asp:BoundField DataField="Url_link" HeaderText="Url_link" SortExpression="Url_link" />
                    <asp:BoundField DataField="sub_image_url" HeaderText="sub_image_url" SortExpression="sub_image_url" />
                    <asp:BoundField DataField="En" HeaderText="En" />
                    <asp:BoundField DataField="tooltip" HeaderText="tooltip " />
                </Columns>
            </asp:GridView>
            hhhhhhhh


        </asp:Panel>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" SelectCommand="SELECT Menu_Main.main_Menu_Name, Menu_Main.main_image_url, Menu_Main.main_Menu_Id, Menu_Main.Teacher_ID, menu_users.mobile, '&lt;img src=&quot;' + Menu_Main.main_image_url + '&quot; alt=&quot;&quot;  class=&quot;img&quot;/&gt;' + '    ' + Menu_Main.main_Menu_Name_en AS name_en, '&lt;img src=&quot;' + Menu_Main.main_image_url + '&quot; alt=&quot;&quot;  class=&quot;img&quot;/&gt;' + '    ' + Menu_Main.main_Menu_Name AS name_ar, Menu_Main.main_Menu_Name_en FROM Menu_Main INNER JOIN menu_users ON Menu_Main.Teacher_ID = menu_users.User_ID ORDER BY Menu_Main.order_id">
        </asp:SqlDataSource>

       

        <div class="auto-style62">
        </div>
               <asp:Label ID="Label6" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
        <br />

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ATTEND2020 %>" DeleteCommand="DELETE FROM [Menu_sub] WHERE [Sub_Menu_ID] = @Sub_Menu_ID" InsertCommand="INSERT INTO [Menu_sub] ([Main_Menu_ID], [Name_Sub_menu], [Url_link]) VALUES (@Main_Menu_ID, @Name_Sub_menu, @Url_link)" SelectCommand="SELECT Sub_Menu_ID, Main_Menu_ID, Name_Sub_menu, Url_link, sub_image_url, En, tooltip, degree FROM Menu_sub WHERE (Main_Menu_ID = @MM) ORDER BY degree, Sub_Menu_ID" UpdateCommand="UPDATE [Menu_sub] SET [Main_Menu_ID] = @Main_Menu_ID, [Name_Sub_menu] = @Name_Sub_menu, [Url_link] = @Url_link WHERE [Sub_Menu_ID] = @Sub_Menu_ID">
            <DeleteParameters>
                <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Main_Menu_ID" Type="String" />
                <asp:Parameter Name="Name_Sub_menu" Type="String" />
                <asp:Parameter Name="Url_link" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="MM" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Main_Menu_ID" Type="String" />
                <asp:Parameter Name="Name_Sub_menu" Type="String" />
                <asp:Parameter Name="Url_link" Type="String" />
                <asp:Parameter Name="Sub_Menu_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>



    </form>
</body>
</html>


