<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="FeedBack1.aspx.cs" Inherits="ICCS_Canteen.FeedBack1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        left: -8px;
        top: 0px;
        width: 30px;
        height: 64px;
    }
        .auto-style10 {
            height: 151px;
            width: 827px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
      <img src="images/feedback.jpg" , class="auto-style10" >
             <table >
           
            
           
            <tr>
                <td class="auto-style9">
                    Email</td>
                <td class="auto-style9">

                    <asp:TextBox ID="txtemail" runat="server" CausesValidation="True" Height="36px" Width="311px" CssClass="auto-style2" BorderColor="#000066"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Email not correct" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style9"></td>
            </tr>
                  <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Message"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" CausesValidation="True" Height="68px" Width="312px" CssClass="auto-style2" BorderColor="#990099"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMessage" ErrorMessage="Enter message"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
           
           
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send feedback" Width="196px" BackColor="#FF6666" OnClick="Button1_Click" BorderColor="#000066" CssClass="auto-style4" Height="44px" />
                  
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    

</asp:Content>
