<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="whatsapp.aspx.cs" Inherits="mybar2.whatsapp" %>

<!DOCTYPE html>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" dir="rtl">
         <div>
            <br />
            ارسال رسالة واتساب الى الرقم<br />
            <br />
          
            <br />
        </div>
                    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCFF99">

       
                     
       
          الدولة
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="TextBox2_TextChanged">
             <asp:ListItem Value="20" Selected="True">	Egypt	</asp:ListItem>

                            <asp:ListItem Value="971">	United Arab Emirates	</asp:ListItem>

                            
                            <asp:ListItem Value="93">	Afghanistan	</asp:ListItem>
 <asp:ListItem Value="355">	Albania	</asp:ListItem>
 <asp:ListItem Value="213">	Algeria	</asp:ListItem>
 <asp:ListItem Value="1-684">	American Samoa	</asp:ListItem>
 <asp:ListItem Value="376">	Andorra	</asp:ListItem>
 <asp:ListItem Value="244">	Angola	</asp:ListItem>
 <asp:ListItem Value="1-264">	Anguilla	</asp:ListItem>
 <asp:ListItem Value="672">	Antarctica	</asp:ListItem>
 <asp:ListItem Value="1-268">	Antigua and Barbuda	</asp:ListItem>
 <asp:ListItem Value="54">	Argentina	</asp:ListItem>
 <asp:ListItem Value="374">	Armenia	</asp:ListItem>
 <asp:ListItem Value="297">	Aruba	</asp:ListItem>
 <asp:ListItem Value="61">	Australia	</asp:ListItem>
 <asp:ListItem Value="43">	Austria	</asp:ListItem>
 <asp:ListItem Value="994">	Azerbaijan	</asp:ListItem>
 <asp:ListItem Value="1-242">	Bahamas	</asp:ListItem>
 <asp:ListItem Value="973">	Bahrain	</asp:ListItem>
 <asp:ListItem Value="880">	Bangladesh	</asp:ListItem>
 <asp:ListItem Value="1-246">	Barbados	</asp:ListItem>
 <asp:ListItem Value="375">	Belarus	</asp:ListItem>
 <asp:ListItem Value="32">	Belgium	</asp:ListItem>
 <asp:ListItem Value="501">	Belize	</asp:ListItem>
 <asp:ListItem Value="229">	Benin	</asp:ListItem>
 <asp:ListItem Value="1-441">	Bermuda	</asp:ListItem>
 <asp:ListItem Value="975">	Bhutan	</asp:ListItem>
 <asp:ListItem Value="591">	Bolivia	</asp:ListItem>
 <asp:ListItem Value="387">	Bosnia and Herzegovina	</asp:ListItem>
 <asp:ListItem Value="267">	Botswana	</asp:ListItem>
 <asp:ListItem Value="55">	Brazil	</asp:ListItem>
 <asp:ListItem Value="246">	British Indian Ocean Territory	</asp:ListItem>
 <asp:ListItem Value="1-284">	British Virgin Islands	</asp:ListItem>
 <asp:ListItem Value="673">	Brunei	</asp:ListItem>
 <asp:ListItem Value="359">	Bulgaria	</asp:ListItem>
 <asp:ListItem Value="226">	Burkina Faso	</asp:ListItem>
 <asp:ListItem Value="257">	Burundi	</asp:ListItem>
 <asp:ListItem Value="855">	Cambodia	</asp:ListItem>
 <asp:ListItem Value="237">	Cameroon	</asp:ListItem>
 <asp:ListItem Value="1">	Canada	</asp:ListItem>
 <asp:ListItem Value="238">	Cape Verde	</asp:ListItem>
 <asp:ListItem Value="1-345">	Cayman Islands	</asp:ListItem>
 <asp:ListItem Value="236">	Central African Republic	</asp:ListItem>
 <asp:ListItem Value="235">	Chad	</asp:ListItem>
 <asp:ListItem Value="56">	Chile	</asp:ListItem>
 <asp:ListItem Value="86">	China	</asp:ListItem>
 <asp:ListItem Value="61">	Christmas Island	</asp:ListItem>
 <asp:ListItem Value="61">	Cocos Islands	</asp:ListItem>
 <asp:ListItem Value="57">	Colombia	</asp:ListItem>
 <asp:ListItem Value="269">	Comoros	</asp:ListItem>
 <asp:ListItem Value="682">	Cook Islands	</asp:ListItem>
 <asp:ListItem Value="506">	Costa Rica	</asp:ListItem>
 <asp:ListItem Value="385">	Croatia	</asp:ListItem>
 <asp:ListItem Value="53">	Cuba	</asp:ListItem>
 <asp:ListItem Value="599">	Curacao	</asp:ListItem>
 <asp:ListItem Value="357">	Cyprus	</asp:ListItem>
 <asp:ListItem Value="420">	Czech Republic	</asp:ListItem>
 <asp:ListItem Value="243">	Democratic Republic of the Congo	</asp:ListItem>
 <asp:ListItem Value="45">	Denmark	</asp:ListItem>
 <asp:ListItem Value="253">	Djibouti	</asp:ListItem>
 <asp:ListItem Value="1-767">	Dominica	</asp:ListItem>
 <asp:ListItem Value="1-809, 1-829, 1-849">	Dominican Republic	</asp:ListItem>
 <asp:ListItem Value="670">	East Timor	</asp:ListItem>
 <asp:ListItem Value="593">	Ecuador	</asp:ListItem>
 <asp:ListItem Value="503">	El Salvador	</asp:ListItem>
 <asp:ListItem Value="240">	Equatorial Guinea	</asp:ListItem>
 <asp:ListItem Value="291">	Eritrea	</asp:ListItem>
 <asp:ListItem Value="372">	Estonia	</asp:ListItem>
 <asp:ListItem Value="251">	Ethiopia	</asp:ListItem>
 <asp:ListItem Value="500">	Falkland Islands	</asp:ListItem>
 <asp:ListItem Value="298">	Faroe Islands	</asp:ListItem>
 <asp:ListItem Value="679">	Fiji	</asp:ListItem>
 <asp:ListItem Value="358">	Finland	</asp:ListItem>
 <asp:ListItem Value="33">	France	</asp:ListItem>
 <asp:ListItem Value="689">	French Polynesia	</asp:ListItem>
 <asp:ListItem Value="241">	Gabon	</asp:ListItem>
 <asp:ListItem Value="220">	Gambia	</asp:ListItem>
 <asp:ListItem Value="995">	Georgia	</asp:ListItem>
 <asp:ListItem Value="49">	Germany	</asp:ListItem>
 <asp:ListItem Value="233">	Ghana	</asp:ListItem>
 <asp:ListItem Value="350">	Gibraltar	</asp:ListItem>
 <asp:ListItem Value="30">	Greece	</asp:ListItem>
 <asp:ListItem Value="299">	Greenland	</asp:ListItem>
 <asp:ListItem Value="1-473">	Grenada	</asp:ListItem>
 <asp:ListItem Value="1-671">	Guam	</asp:ListItem>
 <asp:ListItem Value="502">	Guatemala	</asp:ListItem>
 <asp:ListItem Value="44-1481">	Guernsey	</asp:ListItem>
 <asp:ListItem Value="224">	Guinea	</asp:ListItem>
 <asp:ListItem Value="245">	Guinea-Bissau	</asp:ListItem>
 <asp:ListItem Value="592">	Guyana	</asp:ListItem>
 <asp:ListItem Value="509">	Haiti	</asp:ListItem>
 <asp:ListItem Value="504">	Honduras	</asp:ListItem>
 <asp:ListItem Value="852">	Hong Kong	</asp:ListItem>
 <asp:ListItem Value="36">	Hungary	</asp:ListItem>
 <asp:ListItem Value="354">	Iceland	</asp:ListItem>
 <asp:ListItem Value="91">	India	</asp:ListItem>
 <asp:ListItem Value="62">	Indonesia	</asp:ListItem>
 <asp:ListItem Value="98">	Iran	</asp:ListItem>
 <asp:ListItem Value="964">	Iraq	</asp:ListItem>
 <asp:ListItem Value="353">	Ireland	</asp:ListItem>
 <asp:ListItem Value="44-1624">	Isle of Man	</asp:ListItem>
 <asp:ListItem Value="972">	Israel	</asp:ListItem>
 <asp:ListItem Value="39">	Italy	</asp:ListItem>
 <asp:ListItem Value="225">	Ivory Coast	</asp:ListItem>
 <asp:ListItem Value="1-876">	Jamaica	</asp:ListItem>
 <asp:ListItem Value="81">	Japan	</asp:ListItem>
 <asp:ListItem Value="44-1534">	Jersey	</asp:ListItem>
 <asp:ListItem Value="962">	Jordan	</asp:ListItem>
 <asp:ListItem Value="7">	Kazakhstan	</asp:ListItem>
 <asp:ListItem Value="254">	Kenya	</asp:ListItem>
 <asp:ListItem Value="686">	Kiribati	</asp:ListItem>
 <asp:ListItem Value="383">	Kosovo	</asp:ListItem>
 <asp:ListItem Value="965">	Kuwait	</asp:ListItem>
 <asp:ListItem Value="996">	Kyrgyzstan	</asp:ListItem>
 <asp:ListItem Value="856">	Laos	</asp:ListItem>
 <asp:ListItem Value="371">	Latvia	</asp:ListItem>
 <asp:ListItem Value="961">	Lebanon	</asp:ListItem>
 <asp:ListItem Value="266">	Lesotho	</asp:ListItem>
 <asp:ListItem Value="231">	Liberia	</asp:ListItem>
 <asp:ListItem Value="218">	Libya	</asp:ListItem>
 <asp:ListItem Value="423">	Liechtenstein	</asp:ListItem>
 <asp:ListItem Value="370">	Lithuania	</asp:ListItem>
 <asp:ListItem Value="352">	Luxembourg	</asp:ListItem>
 <asp:ListItem Value="853">	Macau	</asp:ListItem>
 <asp:ListItem Value="389">	Macedonia	</asp:ListItem>
 <asp:ListItem Value="261">	Madagascar	</asp:ListItem>
 <asp:ListItem Value="265">	Malawi	</asp:ListItem>
 <asp:ListItem Value="60">	Malaysia	</asp:ListItem>
 <asp:ListItem Value="960">	Maldives	</asp:ListItem>
 <asp:ListItem Value="223">	Mali	</asp:ListItem>
 <asp:ListItem Value="356">	Malta	</asp:ListItem>
 <asp:ListItem Value="692">	Marshall Islands	</asp:ListItem>
 <asp:ListItem Value="222">	Mauritania	</asp:ListItem>
 <asp:ListItem Value="230">	Mauritius	</asp:ListItem>
 <asp:ListItem Value="262">	Mayotte	</asp:ListItem>
 <asp:ListItem Value="52">	Mexico	</asp:ListItem>
 <asp:ListItem Value="691">	Micronesia	</asp:ListItem>
 <asp:ListItem Value="373">	Moldova	</asp:ListItem>
 <asp:ListItem Value="377">	Monaco	</asp:ListItem>
 <asp:ListItem Value="976">	Mongolia	</asp:ListItem>
 <asp:ListItem Value="382">	Montenegro	</asp:ListItem>
 <asp:ListItem Value="1-664">	Montserrat	</asp:ListItem>
 <asp:ListItem Value="212">	Morocco	</asp:ListItem>
 <asp:ListItem Value="258">	Mozambique	</asp:ListItem>
 <asp:ListItem Value="95">	Myanmar	</asp:ListItem>
 <asp:ListItem Value="264">	Namibia	</asp:ListItem>
 <asp:ListItem Value="674">	Nauru	</asp:ListItem>
 <asp:ListItem Value="977">	Nepal	</asp:ListItem>
 <asp:ListItem Value="31">	Netherlands	</asp:ListItem>
 <asp:ListItem Value="599">	Netherlands Antilles	</asp:ListItem>
 <asp:ListItem Value="687">	New Caledonia	</asp:ListItem>
 <asp:ListItem Value="64">	New Zealand	</asp:ListItem>
 <asp:ListItem Value="505">	Nicaragua	</asp:ListItem>
 <asp:ListItem Value="227">	Niger	</asp:ListItem>
 <asp:ListItem Value="234">	Nigeria	</asp:ListItem>
 <asp:ListItem Value="683">	Niue	</asp:ListItem>
 <asp:ListItem Value="850">	North Korea	</asp:ListItem>
 <asp:ListItem Value="1-670">	Northern Mariana Islands	</asp:ListItem>
 <asp:ListItem Value="47">	Norway	</asp:ListItem>
 <asp:ListItem Value="968">	Oman	</asp:ListItem>
 <asp:ListItem Value="92">	Pakistan	</asp:ListItem>
 <asp:ListItem Value="680">	Palau	</asp:ListItem>
 <asp:ListItem Value="970">	Palestine	</asp:ListItem>
 <asp:ListItem Value="507">	Panama	</asp:ListItem>
 <asp:ListItem Value="675">	Papua New Guinea	</asp:ListItem>
 <asp:ListItem Value="595">	Paraguay	</asp:ListItem>
 <asp:ListItem Value="51">	Peru	</asp:ListItem>
 <asp:ListItem Value="63">	Philippines	</asp:ListItem>
 <asp:ListItem Value="64">	Pitcairn	</asp:ListItem>
 <asp:ListItem Value="48">	Poland	</asp:ListItem>
 <asp:ListItem Value="351">	Portugal	</asp:ListItem>
 <asp:ListItem Value="1-787, 1-939">	Puerto Rico	</asp:ListItem>
 <asp:ListItem Value="974">	Qatar	</asp:ListItem>
 <asp:ListItem Value="242">	Republic of the Congo	</asp:ListItem>
 <asp:ListItem Value="262">	Reunion	</asp:ListItem>
 <asp:ListItem Value="40">	Romania	</asp:ListItem>
 <asp:ListItem Value="7">	Russia	</asp:ListItem>
 <asp:ListItem Value="250">	Rwanda	</asp:ListItem>
 <asp:ListItem Value="590">	Saint Barthelemy	</asp:ListItem>
 <asp:ListItem Value="290">	Saint Helena	</asp:ListItem>
 <asp:ListItem Value="1-869">	Saint Kitts and Nevis	</asp:ListItem>
 <asp:ListItem Value="1-758">	Saint Lucia	</asp:ListItem>
 <asp:ListItem Value="590">	Saint Martin	</asp:ListItem>
 <asp:ListItem Value="508">	Saint Pierre and Miquelon	</asp:ListItem>
 <asp:ListItem Value="1-784">	Saint Vincent and the Grenadines	</asp:ListItem>
 <asp:ListItem Value="685">	Samoa	</asp:ListItem>
 <asp:ListItem Value="378">	San Marino	</asp:ListItem>
 <asp:ListItem Value="239">	Sao Tome and Principe	</asp:ListItem>
 <asp:ListItem Value="966">	Saudi Arabia	</asp:ListItem>
 <asp:ListItem Value="221">	Senegal	</asp:ListItem>
 <asp:ListItem Value="381">	Serbia	</asp:ListItem>
 <asp:ListItem Value="248">	Seychelles	</asp:ListItem>
 <asp:ListItem Value="232">	Sierra Leone	</asp:ListItem>
 <asp:ListItem Value="65">	Singapore	</asp:ListItem>
 <asp:ListItem Value="1-721">	Sint Maarten	</asp:ListItem>
 <asp:ListItem Value="421">	Slovakia	</asp:ListItem>
 <asp:ListItem Value="386">	Slovenia	</asp:ListItem>
 <asp:ListItem Value="677">	Solomon Islands	</asp:ListItem>
 <asp:ListItem Value="252">	Somalia	</asp:ListItem>
 <asp:ListItem Value="27">	South Africa	</asp:ListItem>
 <asp:ListItem Value="82">	South Korea	</asp:ListItem>
 <asp:ListItem Value="211">	South Sudan	</asp:ListItem>
 <asp:ListItem Value="34">	Spain	</asp:ListItem>
 <asp:ListItem Value="94">	Sri Lanka	</asp:ListItem>
 <asp:ListItem Value="249">	Sudan	</asp:ListItem>
 <asp:ListItem Value="597">	Suriname	</asp:ListItem>
 <asp:ListItem Value="47">	Svalbard and Jan Mayen	</asp:ListItem>
 <asp:ListItem Value="268">	Swaziland	</asp:ListItem>
 <asp:ListItem Value="46">	Sweden	</asp:ListItem>
 <asp:ListItem Value="41">	Switzerland	</asp:ListItem>
 <asp:ListItem Value="963">	Syria	</asp:ListItem>
 <asp:ListItem Value="886">	Taiwan	</asp:ListItem>
 <asp:ListItem Value="992">	Tajikistan	</asp:ListItem>
 <asp:ListItem Value="255">	Tanzania	</asp:ListItem>
 <asp:ListItem Value="66">	Thailand	</asp:ListItem>
 <asp:ListItem Value="228">	Togo	</asp:ListItem>
 <asp:ListItem Value="690">	Tokelau	</asp:ListItem>
 <asp:ListItem Value="676">	Tonga	</asp:ListItem>
 <asp:ListItem Value="1-868">	Trinidad and Tobago	</asp:ListItem>
 <asp:ListItem Value="216">	Tunisia	</asp:ListItem>
 <asp:ListItem Value="90">	Turkey	</asp:ListItem>
 <asp:ListItem Value="993">	Turkmenistan	</asp:ListItem>
 <asp:ListItem Value="1-649">	Turks and Caicos Islands	</asp:ListItem>
 <asp:ListItem Value="688">	Tuvalu	</asp:ListItem>
 <asp:ListItem Value="1-340">	U.S. Virgin Islands	</asp:ListItem>
 <asp:ListItem Value="256">	Uganda	</asp:ListItem>
 <asp:ListItem Value="380">	Ukraine	</asp:ListItem>
 <asp:ListItem Value="44">	United Kingdom	</asp:ListItem>
 <asp:ListItem Value="1">	United States	</asp:ListItem>
 <asp:ListItem Value="598">	Uruguay	</asp:ListItem>
 <asp:ListItem Value="998">	Uzbekistan	</asp:ListItem>
 <asp:ListItem Value="678">	Vanuatu	</asp:ListItem>
 <asp:ListItem Value="379">	Vatican	</asp:ListItem>
 <asp:ListItem Value="58">	Venezuela	</asp:ListItem>
 <asp:ListItem Value="84">	Vietnam	</asp:ListItem>
 <asp:ListItem Value="681">	Wallis and Futuna	</asp:ListItem>
 <asp:ListItem Value="212">	Western Sahara	</asp:ListItem>
 <asp:ListItem Value="967">	Yemen	</asp:ListItem>
 <asp:ListItem Value="260">	Zambia	</asp:ListItem>
 <asp:ListItem Value="263">	Zimbabwe	</asp:ListItem>
				


            </asp:DropDownList>
       
        <br />
        رقم الهاتف
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" style="text-align: center" TextMode="Number"></asp:TextBox>
                        <br />
           الرسالة<br />

       
                        <asp:TextBox ID="TextBox3" runat="server" Height="161px" Width="400px"></asp:TextBox>

        <p>
            <asp:Button ID="Button1" runat="server" OnClick="TextBox2_TextChanged" OnClientClick="target ='_blank';" style="color: #FFFFCC; font-weight: 700; background-color: #000000" Text="اضغط هنا press" />
                        </p>
         </asp:Panel>
    </form>
</body>
</html>
