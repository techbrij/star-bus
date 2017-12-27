<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Star Bus: Log In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="text-align:center">
    <asp:Login ID="Login1" runat="server" DisplayRememberMe="False" DestinationPageUrl="~/Secret/Selectseat.aspx"
        PasswordRecoveryText="Forget Password"
        PasswordRecoveryUrl="~/Forget_password.aspx" BackColor="#F7F6F3" 
        BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="1.1em" 
        onauthenticate="Login1_Authenticate"  
        ForeColor="#333333" CssClass="logininfo" >
        <TextBoxStyle Font-Size="1em"   />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" ForeColor="#284775" />
        <LayoutTemplate>
            <table border="0" cellpadding="4" cellspacing="0" 
                style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table border="0" cellpadding="2">
                            <tr>
                                <td align="center" colspan="2" 
                                    style="color:White;background-color:#5D7B9D;font-size:1.1em;font-weight:bold;height:22px;">
                                    Log In</td>
                            </tr>
                            <tr>
                                <td align="left" style="padding-top:7px">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td style="padding-top:10px">
                                    <asp:TextBox ID="UserName" runat="server" Font-Size="1em" Width="142px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                        ToolTip="User Name is required." ValidationGroup="Login1" 
                                        Display="Dynamic">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" Font-Size="1em" TextMode="Password" Width="142px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="Login1" Display="Dynamic">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" BackColor="#FFFBFF" 
                                        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" 
                                        Font-Names="Verdana" Font-Size="1em" ForeColor="#284775" Text="Log In" 
                                        ValidationGroup="Login1" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:left">
                                    <asp:HyperLink ID="PasswordRecoveryLink" runat="server" 
                                        NavigateUrl="~/Forget_password.aspx">Forget Password</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />

<LabelStyle HorizontalAlign="Left"></LabelStyle>

        <TitleTextStyle BackColor="#5D7B9D"  Font-Bold="True" ForeColor="#FFFFFF" Height="22px" 
            Font-Size="1.1em" />
    </asp:Login>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

