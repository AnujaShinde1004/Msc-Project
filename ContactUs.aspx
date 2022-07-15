<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ICCS_Canteen.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/contact.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            height: 94%;
            width: 99%;
        }
        .auto-style4 {
            width: 100%;
            height: 100%;
        }
        .auto-style5 {
            width: 97%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact" id="contact">
        <div class="max-width">
           
            <div class="contact-content">
                <div class="column right">
                    <div class="text">Message me
                    <form action="#">
                        <div class="fields">
                            <div class="field name" style="width: 99%">
                                <input type="text" placeholder="Name" required class="auto-style4">
                            </div>
                            <div class="field email">
                                <input type="email" placeholder="Email" required class="auto-style3">
                            </div>
                        </div>
                        
                        <div class="field textarea">
                            <textarea rows="10" placeholder="Message.." required class="auto-style5"></textarea>
                        </div>
                        <div class="button-area">
                            <button type="submit">Send message</button>
                        </div>
                    </form>
                         
                </div>
            </div>
        </div>
    </div>
         <marquee scrollamount="8" loop="infinit"  id='scroll' >
<div onMouseOver="document.getElementById('scroll').stop();" onMouseOut="document.getElementById('scroll').start();">
<h1>contact me on 9112264747   email:- anujashinde1004@gmail.com  </h1>
</div></marquee>
  </div>
</asp:Content>
