<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="HomeForAdmin.aspx.cs" Inherits="AdminArea_HomeForAdmin" Title="Star Bus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 346px;
        }
        .style2
        {
            width: 120px;
        }
        .style3
        {
            width: 2%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table style="width: 100%; height: 200px;">
        <!-- Main Table start -->
        <tr>
            <td>
                <!-- Left Table Start-->
                <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; height: 254px;">
                    <tbody>
                        <tr>
                            <!--Center Side Start -->
                            <td class="style1">
                                <div style="float: left; width: 321px; height: 157px;">
                                    <table cellspacing="0" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td colspan="3" height="25">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" style="font-size:medium;color:Black  ">
                                                
                                                    <strong> Number Of Bus </strong>
                                                </td>
                                                <td>
                                                    :
                                                </td>
                                                <td height="25" style="font-size:medium;color:Black  " align="center">
                                                    <asp:Literal ID="litbus" Text="20" runat="server" />
                                                </td>
                                            </tr>
                                            <tr><td></td></tr>
                                            <tr>
                                                <td height="25" style="font-size:medium;color:Black  ">
                                                    <strong>Number Of Agent </strong>
                                                </td>
                                                <td>
                                                    :
                                                </td>
                                               <td height="25" style="font-size:medium;color:Black  " align="center">
                                                    <asp:Literal ID="litagent" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" height="25" align="center">
                                                    <asp:Label ID="lblerror" runat="server" ForeColor="Red" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" align="center" class="redText " height="25">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
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
