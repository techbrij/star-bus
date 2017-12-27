<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Deposit.aspx.cs" Inherits="AdminArea_Deposit" Title="Star Bus: Deposit Amount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table width="100%">
        <tr>
            <td align="center">
            <asp:Panel ID="pnl1" runat="server">
                <table>
                    <tr>
                                                  
                                <td colspan="4" height="33" style="color: #F7990D; font-size: x-large; font-weight:bold" align="center">
                                    Deposit Amount
                                </td>
                            
                      
                    </tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr valign="middle">
                        <td align="left" height="27">
                            Agent Name
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvname" ErrorMessage="*" ControlToValidate="txtname"
                                runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td height="27" align="left">
                            Deposite Amount
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtamount" runat="server" />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvamount" ControlToValidate="txtamount" ErrorMessage="*"
                                runat="server" />
                                
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                        <asp:RangeValidator ID = "rangedep" Text ="Plz Enter the Vaild Amount" runat="server" MinimumValue="1" MaximumValue="100000" Type="Double" ControlToValidate="txtamount" />
                        <asp:Label ID="lblerror" ForeColor="Red" runat="server" /></td>
                    </tr>                    
                    <tr>
                        <td colspan="4" align="center">
                            <asp:Button ID="btnsubmit" Text="Deposit" runat="server" OnClick="btnsubmit_Click" />
                        </td>
                    </tr>
                </table>
                </asp:Panel>
                <asp:Panel ID ="pnl2" runat="server" Visible="false">
                
                 <table>
                    <tr>
                        
                                <td  height="33" style="color: #F7990D; font-size: x-large;font-weight:bold" align="center"  >
                                    Deposited Successfully.
                                </td>
                            
                    </tr>
                    </table>
                
                
                </asp:Panel>
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
