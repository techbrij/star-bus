<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="~/Secret/selectseat.aspx.cs" Inherits="starselectseet2" Title="Star Bus:Book Tickets Now" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 320px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
    <table align="center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Book Tickets Now!" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
    </table>
    <asp:UpdatePanel ID="up" runat="server">
        <ContentTemplate>
            <table>
                <!-- Main Table start -->
                <tr>
                    <td>
                        <!-- Left Table Start-->
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 95%; margin-top:20px">
                            <tbody>
                                <tr>
                                    <!--Center Side Start -->
                                    <td align="center" class="style1">
                                        <div class="smallbox" style="margin: 0px">
                                            
                                            <table style="margin-left: 20px; width: 278px; height: 95px;" cellspacing="0" cellpadding="0"
                                                align="center" border="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="formtext" width="37%" height="27">
                                                            From:
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                            <asp:DropDownList CssClass="form" ID="Source" runat="server">
                                                                <asp:ListItem Text="Bikaner" Value="Bikaner"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="formtext" width="37%" height="27">
                                                            To:
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                            <asp:UpdatePanel ID="up4" runat="server">
                                                                <ContentTemplate>
                                                                    <div id="txtHint">
                                                                        <asp:DropDownList CssClass="form" tyle="width: 130px" ID="Destination" runat="server" 
                                                                            AutoPostBack="True" OnSelectedIndexChanged="Destination_SelectedIndexChanged">
                                                                            <asp:ListItem Text="--select--" Value="--select--"></asp:ListItem>
                                                                            <asp:ListItem Text="Ajmer" Value="Ajmer"></asp:ListItem>
                                                                            <asp:ListItem Text="Alwar" Value="Alwar"></asp:ListItem>
                                                                            <asp:ListItem Text="Bhilwara" Value="Bhilwara"></asp:ListItem>
                                                                            <asp:ListItem Text="Bombay" Value="Bombay"></asp:ListItem>
                                                                            <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
                                                                            <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem>
                                                                            <asp:ListItem Text="Hanumangarh" Value="Hanumangarh"></asp:ListItem>
                                                                            <asp:ListItem Text="Jaipur" Value="Jaipur"></asp:ListItem>
                                                                            <asp:ListItem Text="Jodhpur" Value="Jodhpur"></asp:ListItem>
                                                                            <asp:ListItem Text="Kota" Value="Kota"></asp:ListItem>
                                                                            
                                                                            
                                                                             
                                                                            
                                                                            
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="formtext" width="37%" height="27">
                                                            Depart on :
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                            <asp:UpdatePanel ID="up2" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:DropDownList ID="departon" runat="server" OnSelectedIndexChanged="departon_SelectedIndexChanged"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="formtext" width="37%" height="27%">
                                                            Time
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                            <asp:UpdatePanel ID="up3" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:DropDownList ID="DepartureTime" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DepartureTime_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="formtext" height="27%" width="37%">
                                                            Seat Number
                                                        </td>
                                                        <td align="left" height="27" width="63%">
                                                            <asp:TextBox ID="txtseatnumber" runat="server" ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="formtext" height="27%" width="37%">
                                                            Rent
                                                        </td>
                                                        <td align="left" height="37" width="63%">
                                                            <asp:Literal ID="litrent1" runat="server" />
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                    <!--Center Side End -->
                                    <!--Right Side open -->
                                    <td width="55%">
                                        <asp:Panel ID="pnl1" runat="server">
                                            <asp:Table border="0" ID="seattable" runat="server">
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell1" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s1" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            OnClick="s1click" runat="server" />1</asp:TableCell>
                                                    <asp:TableCell ID="TableCell2" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s6" OnClick="s6click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />6</asp:TableCell>
                                                    <asp:TableCell ID="TableCell3" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s7" OnClick="s7click" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />7</asp:TableCell>
                                                    <asp:TableCell ID="TableCell4" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s12" OnClick="s12click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />12</asp:TableCell>
                                                    <asp:TableCell ID="TableCell5" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s13" OnClick="s13click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />13</asp:TableCell>
                                                    <asp:TableCell ID="TableCell6" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s18" OnClick="s18click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />18</asp:TableCell>
                                                    <asp:TableCell ID="TableCell7" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s19" OnClick="s19click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />19</asp:TableCell>
                                                    <asp:TableCell ID="TableCell8" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s24" OnClick="s24click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />24</asp:TableCell>
                                                    <asp:TableCell ID="TableCell9" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s25" OnClick="s25click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />25</asp:TableCell>
                                                    <asp:TableCell ID="TableCell10" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s31" OnClick="s31click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />31</asp:TableCell></asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell11" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s2" ImageUrl="~/Images/available_seat_img.gif" OnClick="s2click"
                                                            runat="server" />2</asp:TableCell>
                                                    <asp:TableCell ID="TableCell12" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s5" OnClick="s5click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />5</asp:TableCell>
                                                    <asp:TableCell ID="TableCell13" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s8" OnClick="s8click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />8</asp:TableCell>
                                                    <asp:TableCell ID="TableCell14" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s11" OnClick="s11click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />11</asp:TableCell>
                                                    <asp:TableCell ID="TableCell15" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s14" OnClick="s14click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />14</asp:TableCell>
                                                    <asp:TableCell ID="TableCell16" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s17" OnClick="s17click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />17</asp:TableCell>
                                                    <asp:TableCell ID="TableCell17" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s20" OnClick="s20click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />20</asp:TableCell>
                                                    <asp:TableCell ID="TableCell18" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s23" OnClick="s23click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />23</asp:TableCell>
                                                    <asp:TableCell ID="TableCell19" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s26" OnClick="s26click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />26</asp:TableCell>
                                                    <asp:TableCell ID="TableCell20" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s30" OnClick="s30click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />30</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell21" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell22" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell23" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell24" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell25" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell26" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell27" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell28" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell29" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell30" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s29" OnClick="s29click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />29</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell31" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s3" OnClick="s3click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />3</asp:TableCell>
                                                    <asp:TableCell ID="TableCell32" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s4" OnClick="s4click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />4</asp:TableCell>
                                                    <asp:TableCell ID="TableCell33" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s9" OnClick="s9click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />9</asp:TableCell>
                                                    <asp:TableCell ID="TableCell34" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s10" OnClick="s10click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />10</asp:TableCell>
                                                    <asp:TableCell ID="TableCell35" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s15" OnClick="s15click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />15</asp:TableCell>
                                                    <asp:TableCell ID="TableCell36" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s16" OnClick="s16click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />16</asp:TableCell>
                                                    <asp:TableCell ID="TableCell37" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s21" OnClick="s21click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />21</asp:TableCell>
                                                    <asp:TableCell ID="TableCell38" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s22" OnClick="s22click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />22</asp:TableCell>
                                                    <asp:TableCell ID="TableCell39" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s27" OnClick="s27click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />27</asp:TableCell>
                                                    <asp:TableCell ID="TableCell40" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s28" OnClick="s28click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />28</asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </asp:Panel>
                                        <asp:Panel ID="pnl2" runat="server" Visible="False">
                                            <div id="blueBox">
                                                <div id="blueBoxtitle">
                                                    <h4>
                                                        CUSTOMER INFORMATION
                                                    </h4>
                                                </div>
                                                <div style="float: right; width: 296px; height: 200px;">
                                                    <table cellspacing="0" cellpadding="0" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td height="25">
                                                                    Ticket Number
                                                                </td>
                                                                <td>
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:Literal ID="litpnr" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    Name
                                                                </td>
                                                                <td>
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtname" runat="server" />
                                                                    <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="*" ControlToValidate="txtname" />
                                                                    <%--<asp:RangeValidator ID="range" Text ="Invalid Name" Type="String"   ControlToValidate="txtname" runat="server" /> --%>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    Phone Number
                                                                </td>
                                                                <td>
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtphone" runat="server" />
                                                                    <asp:RequiredFieldValidator ID="rfvph" ControlToValidate="txtphone" ErrorMessage="*"
                                                                        runat="server" />
                                                                    <asp:RangeValidator ID="rangephnumber" Text="Invalid Number" Type="Double" MaximumValue="10000000000"
                                                                        MinimumValue="1" ControlToValidate="txtphone" runat="server" />
                                                                </td>
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        Total Seat
                                                                    </td>
                                                                    <td align="left">
                                                                        :
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Literal ID="littotalseat" runat="server"></asp:Literal>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        Rent Per Seat
                                                                    </td>
                                                                    <td align="left" width="5%">
                                                                        :
                                                                    </td>
                                                                    <td align="left" width="49%">
                                                                        <asp:Literal ID="litrent" runat="server"></asp:Literal>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="25" align="left">
                                                                        Bus Number
                                                                    </td>
                                                                    <td width="5%" align="left">
                                                                        :
                                                                    </td>
                                                                    <td align="left" width="49%">
                                                                        <asp:Literal ID="litbusnumber" runat="server" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="redText " height="25">
                                                                        Total Rent
                                                                    </td>
                                                                    <td width="5%">
                                                                        :
                                                                    </td>
                                                                    <td class="redText">
                                                                        Rs.
                                                                        <asp:Literal ID="littotalrent" runat="server" />
                                                                    </td>
                                                                </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                        </asp:Panel>
                                    </td>
                                    <!--Right Side End -->
                                </tr>
                            </tbody>
                        </table>
                        <!-- end of Center-->
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Size="Medium" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:ImageButton ID="ibnext" ImageUrl="~/Images/btn_go.gif" runat="server" OnClick="ibnext_Click" />
                        <asp:ImageButton ID="btnSave" ImageUrl="~/Images/btn_go.gif" runat="server" OnClick="btnSave_Click"
                            Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
            </table>
            <!-- Main Table End -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
