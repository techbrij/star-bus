<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Faq.aspx.cs" Inherits="Faqajax" Title="Star Bus: Frequently asked questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
    <%--<div id="innertitle">
<h3>FAQ</h3></div>--%>
<div id="innertitle">
    <table align="center" >
        <tr align="left">
            <td align="left" class="style1" >
                <strong><asp:Label ID="lblheat" runat="server" Text="FAQ" Font-Size="X-Large"  
                    ForeColor="#F7990D"></asp:Label></strong>
           <br /> </td>
        </tr>
    </table>
    </div>
    <div id="rightContent">
        <div class="mainText" id="maintextBox">
            <!-- Body Content Starts -->
            <div id="fromtitle">
                <h3 id="top">
                    Frequently asked questions</h3>
            </div>
            <div id="formBody">
                <div id="contentBox" style="margin: 0px 0px 20px 0px">
                    <ul>
                        <li><a href="#q1">Do I have to pay extra when compared to buying the tickets in the
                            traditional way?</a> </li>
                        <li><a href="#q3">I’ve lost my ticket what do I do now?</a> </li>
                        <li><a href="#q4">Can I cancel the ticket? </a></li>
                        <li><a href="#q5">I don't have a credit can I still buy tickets at Starbus? </a>
                        </li>
                        <li><a href="#q6">I missed the bus. Do I get refund? </a></li>
                        <li><a href="#q7">What credit/debit cards do you accept? </a></li>
                        <li><a href="#q8">What payment options do i have? </a></li>
                        <li><a href="#q9">Is there any other option to book tickets from Starbus? </a></li>
                    </ul>
                </div>
                <ul>
                    <li><a id="q1" name="q1"></a><span class="orange11"><b>Do I have to pay extra when compared
                        to buying the tickets in the traditional way?</b></span><br />
                        Starbus does not charge anything extra when compared to the traditional way. The
                        tickets are absolutely at the same cost. </li>
                    <li><a id="q3" name="q3"></a><span class="orange11"><b>I’ve lost my ticket what do I
                        do now?</b></span><br />
                        We required PIN of your ticket. on that basis we will provide you a new ticket.
                        In near future this problem will be solved by taking your name and destination and
                        on that, we will provide you a fresh ticket to the particular destination.</li>
                    <li><a id="q4" name="q4"></a><span class="orange11"><b>Can I cancel the ticket?</b></span><br />
                        Yes. The tickets booked through Starbus can be cancelled. Money is transferred back
                        to the passenger's. Please note that the cancellation fee is 0% of your fare and
                        cancellation can be done only one day before.</li>
                    <li><a id="q5" name="q5"></a><span class="orange11"><b>I don't have a credit can I still
                        buy tickets at Starbus? </b></span>
                        <br />
                        Yes. You don't necessarily need to have a credit card to buy tickets on Starbus.
                        but after few month take a new process in that All you need to have is just an internet
                        bank account. You can transfer money from any of your below bank accounts to Starbus
                        to buy tickets. </li>
                    <ul id="faqStyle2">
                        <li>ICICI Infinity </li>
                        <li>UTI Services </li>
                    </ul>
                    <li><a id="q6" name="q6"></a><span class="orange11"><b>I missed the bus. Do I get refund?</b></span><br />
                        Starbus provides 100% refund if the bus is missed due to either Starbus or its partner
                        company's fault. However, if the bus is missed due to any other reasons not directly
                        related to Starbus it does not provide any refund. </li>
                    <li><a id="q7" name="q7"></a><span class="orange11"><b>What credit/debit cards do you
                        accept?</b></span><br />
                        We accept only cash at present. </li>
                    <li><a id="q8" name="q8"></a><span class="orange11"><b>What payment options do i have?</b></span><br />
                        At present we accept only cash but in near future we also have payment options such
                        as master and viza card.</li>
                    <li><a id="q9" name="q9"></a><span class="orange11"><b>Is there any other option to
                        book tickets from Starbus? </b></span>
                        <br />
                        Yes. You can book tickets by going to the nearest agent counter or to our head office.
                    </li>
                </ul>
                <p style="float: right">
                    <a href="#top">Top</a></p>
            </div>
        </div>
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
