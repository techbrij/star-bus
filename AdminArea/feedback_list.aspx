<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback_list.aspx.cs" Inherits="AdminArea_feedback_list" Title="Star Bus:Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<table align="center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Feedback List" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
    </table>

<asp:UpdatePanel ID ="up1" runat="server" ><ContentTemplate>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True"
        DataSourceID="AccessDataSource1" Height="133px" Width="784px" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="2px" 
        CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                SortExpression="Subject" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" 
                SortExpression="Comment"  />
            <asp:BoundField DataField="User_Type" HeaderText="User_Type" 
                SortExpression="User_Type" />
        </Columns>
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/db/starbus.mdb" 
        SelectCommand="SELECT [Name], [Email], [Phone], [Subject], [Comment], [User_type] FROM [feedback]">
    </asp:AccessDataSource>
        </ContentTemplate> </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

