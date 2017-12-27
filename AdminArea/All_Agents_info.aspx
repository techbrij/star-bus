<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="All_Agents_info.aspx.cs" Inherits="AdminArea_AllAgents" Title="Star Bus:Agent List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <table align="center" style="text-align:center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Agent List" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        </table> 
   <asp:UpdatePanel ID="up1" runat="server"><ContentTemplate>
       <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
           AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
           BorderStyle="None" BorderWidth="1px" CellPadding="3" 
           DataSourceID="AccessDataSource1" Height="136px" Width="872px">
           <FooterStyle BackColor="White" ForeColor="#000066" />
           <RowStyle ForeColor="#000066" />
           <Columns>
               <asp:BoundField DataField="Agent_id" HeaderText="Agent_id" 
                   SortExpression="Agent_id" />
               <asp:BoundField DataField="Agent_name" HeaderText="Agent_name" 
                   SortExpression="Agent_name" />
               <asp:BoundField DataField="Agent_shop_name" HeaderText="Agent_shop_name" 
                   SortExpression="Agent_shop_name" />
               <asp:BoundField DataField="Agent_shop_add" HeaderText="Agent_shop_add" 
                   SortExpression="Agent_shop_add" />
               <asp:BoundField DataField="Agent_shop_city" HeaderText="Agent_shop_city" 
                   SortExpression="Agent_shop_city" />
               <asp:BoundField DataField="Agent_phone_number" HeaderText="Agent_phone_number" 
                   SortExpression="Agent_phone_number" />
               <asp:BoundField DataField="Agent_mobile_number" 
                   HeaderText="Agent_mobile_number" SortExpression="Agent_mobile_number" />
               <asp:BoundField DataField="Agent_current_bal" HeaderText="Agent_current_bal" 
                   SortExpression="Agent_current_bal" />
           </Columns>
           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
       </asp:GridView>
       <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
           DataFile="~/db/starbus.mdb" 
           SelectCommand="SELECT [Agent_id], [Agent_name], [Agent_fname], [Agent_shop_name], [Agent_shop_add], [Agent_shop_city], [Agent_phone_number], [Agent_mobile_number], [Agent_current_bal] FROM [AgentBasicInfo]">
       </asp:AccessDataSource>
    </ContentTemplate> </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

