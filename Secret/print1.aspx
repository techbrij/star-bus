<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"  CodeFile="print1.aspx.cs" Inherits="Secret_print1" Title="Star Bus:Print Ticket Now" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript">

var gAutoPrint = true;

function processPrint(){

if (document.getElementById != null){

var html = '<html>\n<head>\n';

if (document.getElementsByTagName != null){

var headTags = document.getElementsByTagName("head");

if (headTags.length > 0) html += headTags[0].innerHTML;

}

html += '\n</head>\n<body>\n';

var printReadyElem = document.getElementById("PrintArea");

if (printReadyElem != null) html += printReadyElem.innerHTML;

else{

alert("Error, no contents.");

return;

}

html += '\n</body>\n</html>';

var printWin = window.open("","processPrint");

printWin.document.open();

printWin.document.write(html);

printWin.document.close();

if (gAutoPrint) printWin.print();

} else alert("Browser not supported.");

}


</script> 
<style type="text/css" media="print" >
body
{
font-size:12px;
}
#btnPrint
{
	display:none;
	}
</style>  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
    <div>
        <table align="center" style="margin-bottom:25px;">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Print Ticket Now!" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
    </table>
    <div id="PrintArea">
        <table >
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="2" style="border:2px solid gray;padding:5px" >
                        <tbody align="left">
                            <tr>
                                <td align="center" colspan="3" style="border-bottom: 2px solid gray; padding-bottom:5px ">
                                    <asp:Image ID="img1" ImageUrl="~/Images/logo.gif" runat="server" Height="58px" Width="105px" />
                                </td>
                                <td align="left" colspan="3" style="color: Blue; border-bottom: 2px solid gray; padding-bottom: 5px">
                                    H.O :-Star Bus,Rani Bazar,Bikaner<br />
                                    Ph  :- 9887301585
                                    <br />
                                    B.O :-Star Bus, J.N.V.,Bikaner<br />
                                    Ph  :-9214961605
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Ticket Number
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="redText">
                                    <span><strong>
                                        <asp:Literal ID="litpnr" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Agent Name
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litagent" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Name
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litname" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Phone Number
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litph" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Source
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>Bikaner </strong></span>
                                </td>
                                <td>
                                    Destination
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litdestination" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Joutney Date
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litjourneydate" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Journey Time
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litjourneytime" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Seat Numbers
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litseatnum" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    No.of Passengers
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="littotalseat" runat="server" /></strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Boarding Point
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>J.N.V Colony, Bikaner </strong></span>
                                </td>
                                <td>
                                    Bus Number
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litbusnumber" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Booking Date
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litbookingdate" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Total Rent
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="redText">
                                    <span><strong>
                                        <asp:Literal ID="litrent" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td>&nbsp;</td>
                <td>
                    <table cellspacing="0" cellpadding="2" border="0" style="border:2px solid gray;padding:5px" >
                        <tbody>
                            <tr>
                                <td colspan="3" align="Center" style="border-bottom: 2px solid gray; padding-bottom:5px ">
                                  <asp:Image ID="Image1" ImageUrl="~/Images/logo.gif" runat="server" Height="60px"
                                        Width="105px" />
                                </td>
                                <td align="left" colspan="3" style="color: Blue;border-bottom: 2px solid gray; padding-bottom: 5px">
                                    H.O :- Star Bus,Rani Bazar,Bikaner<br />
                                    Ph  :- 9887301585
                                    <br />
                                    B.O :- Star Bus, J.N.V.,Bikaner<br />
                                    Ph  :- 9214961605
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Ticket Number
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="redText">
                                    <span><strong>
                                        <asp:Literal ID="litpnr1" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Agent Name
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litaname1" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Name
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litcname1" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Phone Number
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litph1" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Source
                                </td>
                                <td class="arial18 ">
                                    :
                                </td>
                                <td>
                                   <span><strong>Bikaner </strong></span></td>
                                <td>
                                    Destination
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litdes1" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Joutney Date
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litdate1" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    Journey Time
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="littime1" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Seat Numbers
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="litseat1" runat="server" />
                                    </strong></span>
                                </td>
                                <td>
                                    No.of Passengers
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td>
                                    <span><strong>
                                        <asp:Literal ID="littseat" runat="server" /></strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Total Rent
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="redText">
                                    <span><strong>
                                        <asp:Literal ID="litrent1" runat="server" />
                                    </strong></span>
                                </td>
                                <td colspan="3" >&nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>
      </div>
    </div>
    <input type="button" onclick="javascript:void(processPrint());" id="btnPrint" value="Print"/> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
