<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AboutUs.aspx.cs" Inherits="AboutUsajax" Title="Star Bus: About Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 <style type="text/css">
        
        .style2
        {
        	height:40px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
   <%-- <div id="innertitle">
        <h3>
            About Us</h3>
    </div>--%>
    <div id="innertitle">
        <table align="center">
            <tr align="left">
                <td align="left" class="style2">
                    <strong>
                        <asp:Label ID="lblheat" runat="server" Text="About Us" Font-Size="X-Large" ForeColor="#F7990D"></asp:Label></strong>
                    <br />
                </td>
            </tr>
        </table>
    </div>
    
    <div id="staticcontent" style="margin-top: 10px; margin-bottom: 20px">
        <table cellspacing="0" cellpadding="0" width="92%" align="center" border="0">
            <tbody>
                <tr>
                    <td class="innerrightbg">
                        &nbsp;
                    </td>
                    <td class="innerboxbg" align="center">
                        <table cellspacing="0" cellpadding="0" width="98%" border="0">
                            <tbody>                               
                                <tr>
                                    <td align="left">
                                        <!-- Body Content Starts -->
                                        <p>
                                            <b>Starbus</b> is a pioneer in the online bus reservation in India which utilizes
                                            the advantages of the internet to provide our clients with the best in bus transportation
                                            services from the comforts of their homes and offices. Starbus provides real-time
                                            Internet quotations and real-time bus booking services to direct customers, agents
                                            and tour operator partners.
                                        </p>
                                        <p>
                                            The idea for Starbus has stemmed from the need for simple travel solutions. Buses
                                            are the most commonly used form of travel in India, be it within a city or intra-city.
                                            In fact, buses are sometimes the only form of transportation available to reach
                                            the remote parts of India. However, reserving a seat on a bus is one of the most
                                            tedious processes. Starbus aims to provide our customers with a wide range of services
                                            unsurpassed by any competitor in this industry. We are geared to become the top
                                            seller among online travel companies for all the major bus transportation providers
                                            in India.
                                        </p>
                                        <p>
                                            As a company, Starbus believes in engineering win-win relationships with our partners
                                            in order to guarantee ongoing benefits to our customers. The very nature of our
                                            reservation systems demands that they are not only the best today, but can remain
                                            the best for years to come without the need for disruptive ongoing development.
                                            With our systems, we are sure we would be able to provide uninterrupted service
                                            to our customers and partners
                                        </p>
                                        <p>
                                            Here’s to making bus travel more fun…even before you get into one!!
                                        </p>
                                        <!-- Body Content Ends -->
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td class="innerleftbg">
                        &nbsp;
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
