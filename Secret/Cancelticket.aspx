<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Cancelticket.aspx.cs" Inherits="Secret_Cancelticket" Title="Star Bus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 395px;
        }
        .style2
        {
            width: 34%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
   <table align="center">
        <tr>
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Cancel Tickets" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
    </table>
    <table style="width: 100%; height: 200px;">
        <!-- Main Table start -->
        <tr>
            <td>
                <!-- Left Table Start-->
                <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; height: 254px;">
                    <tbody>
                        <tr>
                            <!--Center Side Start -->
                            <td >
                             <table cellspacing="0" cellpadding="2" border="0" style="vertical-align:top; margin:0 auto;padding-top:25px" align="center">
                                            <tbody>                                                
                                                <tr>
                                                    <td colspan="2" height="25">
                                                        <strong>Enter The PNR number:</strong>
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    
                                                    <td >
                                                        <asp:TextBox ID="txtpnr" runat="server" />
                                                        <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="*"  ControlToValidate="txtpnr" Display="Dynamic" />
                                                    </td><td>
                                                        <asp:Button ID="btnshow" runat="server" Text ="Display" onclick="btnshow_Click1" />    
                                                        </td>
                                                </tr>
                                                
                                                    <tr>
                                                    <td align="center" colspan="2" height="25">
                                                        <asp:Label ID="lblerror"  runat="server" ForeColor="Red" />
                                                    </td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                            </td>
                            <!--Center Side End -->
                            <!--Right Side open -->
                            <td valign="middle" align="center">
                            <asp:Panel ID="pnl1" runat="server">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody>
                                        <tr>
                                            <td class="logo">
                                                <!-- logo here-->
                                                <img alt="bus" src="../Images/volvo-bus-final.gif" />
                                                <!-- end of logo-->
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                </asp:Panel>
                                <asp:Panel  ID="pnl2" runat="server" Visible="False">
                                            <div id="Div1">
                                                                             
                                                <div>
                                                    <table cellspacing="2" cellpadding="2" border="0" style="border:2px solid gray;padding:15px; ">
                                                        <tbody  align="left"  >
                                                            <tr >
                                                                <td height="25">
                                                                    <strong>PNR Number </strong> 
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:Literal ID="litpnr" runat="server" />
                                                                </td>
                                                                <td style="margin-left:15px;width:100px">
                                                                    <strong>Agnet Name</strong></td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID ="litagent" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    <strong>Name</strong>
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td class="style2">
                                                                    <asp:Literal ID="litname" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <strong>Phone Number</strong></td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID="litph" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    <strong>From </strong>
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td class="style2">
                                                                 <asp:Literal ID="litfrom" runat="server" />   
                                                                </td>
                                                                <td>
                                                                    <strong> To </strong> </td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID="litto" runat="server" /></td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        <strong>Date </strong>
                                                                    </td>
                                                                    <td align="left" class="style3">
                                                                        :
                                                                    </td>
                                                                    <td align="left" class="style2">
                                                                        <asp:Literal ID="litdate" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td>
                                                                        <strong>Time</strong></td>
                                                                    <td>:</td>
                                                                    <td><asp:Literal ID="littime" runat="server" /></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        <strong> Seat Number </strong>
                                                                    </td>
                                                                    <td align="left" class="style3">
                                                                        :
                                                                    </td>
                                                                    <td align="left" class="style2">
                                                                        <asp:Literal ID="litseat" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td>
                                                                        <strong>Total Seat</strong> </td>
                                                                    <td>:</td>
                                                                    <td><asp:Literal ID="littotalseat" runat="server" />    </td>
                                                                </tr>
                                                               
                                                                <tr>
                                                                    <td align="left">
                                                                        <strong>Status</strong></td>
                                                                    <td align="left">
                                                                        :</td>
                                                                    <td align="left">
                                                                        <asp:Literal ID="litStatus" runat="server"></asp:Literal></td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                            </tr>
                                                                <tr>
                                                                    <td class="redtext" height="25">
                                                                        <strong>Total Rent</strong>
                                                                    </td>
                                                                    <td class="style3">
                                                                        :
                                                                    </td >
                                                                    <td colspan="4" class="redText">
                                                                        <strong>Rs.
                                                                        <asp:Literal ID="litrent" runat="server" />
                                                                    </strong></td>
                                                                </tr>
                                                                 <tr><td colspan="6" align="center">
                                                                <asp:Button ID="btndel" runat="server" Text =" Delete " onclick="btndel_Click" />
                                                                </td></tr>
                                                                
                                                        </tbody>
                        </table>
                        </div></div> </asp:Panel>
                            </td>
                            <!--Right Side End -->
                        </tr>
                       
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
