<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="stafflogin.aspx.cs" Inherits="ICCS_Canteen.stafflogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 455px;
        }
        .auto-style8 {
            Text-align:left;
            width: 551px;
        }
        .auto-style9 {
            width: 710px;
        }
        .auto-style10 {
            height: 225px;
            text-align: right;
            width: 616px;
        }
        .auto-style11 {
            height: 28px;
            text-align: right;
            width: 710px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
             <div >  
                 <table class="auto-style10">  
                    <caption class="style1">  
                         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Login"></asp:Label>
                </caption>    
                <tr>  
                    <td class="auto-style9">  
 </td>  
                    <td class="auto-style8">  
 </td>  
                    <td class="auto-style6">  
 </td>  
                </tr>  
                <tr>  
                    <td class="auto-style11" text-align="right">  
                        Email::</td>  
                    <td class="auto-style8">  
                        <asp:TextBox ID="email" runat="server" Height="33px" Width="150px"></asp:TextBox>
                    </td>  
                    <td class="auto-style6">  
                        Enter Email Id</td>  
                </tr>  
                <tr>  
                    <td class="auto-style9" text-align="left">  
                        Password:</td>  
                    <td class="auto-style8">  
                        <asp:TextBox ID="pass" runat="server" textmode="password" Height="31px" Width="151px"></asp:TextBox>
                    </td>  
                    <td class="auto-style6">  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pass" ErrorMessage="Enter your Password"></asp:RequiredFieldValidator>
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style11">  
 </td>  
                    <td class="auto-style8"> <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" Height="35px" OnClick="Button1_Click1" Text="Login" Width="74px" /> 
 </td>  
                    <td class="auto-style6">  
 </td>  
                </tr>  
               </table> 



                 <br />
                 <br />
                 <br />
             </div></form>
</asp:Content>
