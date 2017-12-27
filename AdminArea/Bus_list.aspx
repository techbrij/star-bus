<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bus_list.aspx.cs" Inherits="AdminArea_Bus_list" Title="Star Bus: Bus List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <table align="center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Bus List" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
    </table>
 
 
 
 <asp:UpdatePanel ID="up1" runat="server"><ContentTemplate> 
 
 <center>
 
     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
         AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
         BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         DataSourceID="AccessDataSource1" Height="143px" Width="560px">
         <FooterStyle BackColor="White" ForeColor="#000066" />
         <RowStyle ForeColor="#000066" />
         <Columns>
             <asp:BoundField DataField="Sno" HeaderText="Sno" SortExpression="Sno" />
             <asp:BoundField DataField="Station_name" HeaderText="Station_name" 
                 SortExpression="Station_name" />
             <asp:BoundField DataField="Rate_per_seat" HeaderText="Rate_per_seat" 
                 SortExpression="Rate_per_seat" />
             <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
             <asp:BoundField DataField="Reach_time" HeaderText="Reach_time" 
                 SortExpression="Reach_time" />
             <asp:BoundField DataField="Bus_number" HeaderText="Bus_number" 
                 SortExpression="Bus_number" />
         </Columns>
         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
     </asp:GridView>


     <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
         DataFile="~/db/starbus.mdb" 
         SelectCommand="SELECT [Sno], [Station_name], [Rate_per_seat], [Time], [Reach_time], [Bus_number] FROM [Time_list]">
     </asp:AccessDataSource>

</center>
</ContentTemplate></asp:UpdatePanel> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

