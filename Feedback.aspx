<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Feedback.aspx.cs" Inherits="Feedbackajax" Title="Star Bus: Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
       
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
     <div id="innertitle">
        <table align="center" style="margin-bottom:25px">
            <tr align="left">
                <td align="left" >
                    <strong>
                        <asp:Label ID="lblheat" runat="server" Text="Feedback" Font-Size="X-Large" ForeColor="#F7990D"></asp:Label></strong>
                    <br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="rightContent" >
        <div class="mainText" id="maintextBox" >
            <!-- Body Content Starts -->           
            <div id="formBody" style="margin:0 auto;text-align:center">
                <table cellspacing="3" cellpadding="0" border="0" align="center" style="text-align:left">
                    <tbody>
                        <tr>
                            <td height="30">
                                <strong><span>Name: </span></strong>
                            </td>
                            <td valign="middle">
                                <asp:TextBox ID="txtname" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvnaem" ErrorMessage="*" ControlToValidate="txtname"
                                    runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30">
                                <strong><span>Email:</span></strong>
                            </td>
                            <td valign="middle">
                                <asp:TextBox ID="txtemail" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvemail" ErrorMessage="*" ControlToValidate="txtemail"
                                    runat="server" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter the Vaild Email ID"
                                    ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30">
                                <strong><span>Phone:</span></strong>
                            </td>
                            <td valign="middle">
                                <asp:TextBox ID="txtph" runat="server" />
                                <asp:RangeValidator ID="rangeph" ControlToValidate="txtph" Text="Invalid Phone" Type="Double"
                                    MinimumValue="1" MaximumValue="9999999999" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30">
                                <strong><span>Subject:</span></strong>
                            </td>
                            <td valign="middle">
                                <div id="txtHint">
                                    <asp:DropDownList CssClass="form" tyle="width: 130px" ID="dlsubject" runat="server"
                                        Width="133px">
                                        <asp:ListItem Text="Bus service" Value="Bus service"></asp:ListItem>
                                        <asp:ListItem Text="website" Value="website"></asp:ListItem>
                                        <asp:ListItem Text="schedules" Value="schedules"></asp:ListItem>
                                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td> 
                                <strong><span style="vertical-align:middle">Comment:</span></strong><br />(Max 1000 char)
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="txtcomment" runat="server" MaxLength="1000" TextMode="MultiLine"
                                    Height="75px" Width="235px" />
                                <asp:RequiredFieldValidator ID="rfvcomment" ErrorMessage="*" ControlToValidate="txtcomment"
                                    runat="server" />
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td>
                            <td colspan="2" >
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- Body Content Ends -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
