<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="studlogin.aspx.cs" Inherits="ICCS_Canteen.studlogin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 510px;
            text-align: right;
            color:aliceblue;
        }
        .auto-style3 {
            width: 230px;
            
        }
        .auto-style4 {
            width: 510px;
            text-align: right;
            height: 26px;
            color:aliceblue;
        }
        .auto-style5 {
            width: 230px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 510px;
            text-align: right;
            height: 31px;
        }
        .auto-style8 {
            width: 230px;
            height: 31px;
        }
        .auto-style10 {
            width: 100%;
            height: 338px;
        }
        .auto-style11 {
            width: 510px;
            text-align: right;
            height: 28px;
        }
        .auto-style12 {
            width: 230px;
            height: 28px;
        }
        .auto-style13 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/background.jpg"  >
         <form id="form1" runat="server">
             <div >  
                 <table class="auto-style10">  
                     <caption class="style1">  
                         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Login" ForeColor="Aqua"></asp:Label>
                </caption>  
                <tr>  
                    <td class="auto-style11">  
 </td>  
                    <td class="auto-style12">  
 </td>  
                    <td class="auto-style13">  
 </td>  
                </tr>  
                <tr>  
                    <td class="auto-style2" text-align="right">  
Username:</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="uname" runat="server" Height="33px" Width="153px"></asp:TextBox>
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uname" ErrorMessage="enter usename"></asp:RequiredFieldValidator>
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style4" text-align="left">  
                        Password:</td>  
                    <td class="auto-style5">  
                        <asp:TextBox ID="pass" runat="server" textmode="password" Height="31px" Width="151px"></asp:TextBox>
                    </td>  
                    <td class="auto-style6">  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pass" ErrorMessage="Enter your Password"></asp:RequiredFieldValidator>
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style2">  
 </td>  
                    <td class="auto-style3"> <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" Height="35px" OnClick="Button1_Click1" Text="Login" Width="74px" /> 
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="auto-style7">  
 </td>  
                    <td class="auto-style8">  
                        
                        Not a user?<br />

                        Please<a href="studreglogin.aspx">Register</a> 
                        <br />

                       </table> </div></form>
  
                   </asp:Panel>     
</asp:Content>
