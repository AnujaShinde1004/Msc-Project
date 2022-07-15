<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="studreglogin.aspx.cs" Inherits="ICCS_Canteen.studreglogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Panel1 {

        align-content:center
        }

    .container 
    {
    width: 1100px;
    height: auto;
    margin: auto;
    background-color: #FFFFFF;
    text-align:center
    }
        .auto-style3 {
            margin-left: 3px;
        }
        .auto-style4 {
            margin-left: 2px;
        }
        .auto-style5 {
            width: 222px;
        }
        .auto-style11 {
            text-align: right;
            width: 430px;
            height: 39px;
            color:aliceblue;
        }
        .auto-style12 {
            width: 191px;
            text-align: left;
            height: 39px;
        }
        .auto-style13 {
            width: 222px;
            height: 39px;
        }
        .auto-style14 {
            height: 334px;
        }
        .auto-style16 {
            font-size:large;
            width: 191px;
            text-align: left;
        }
        .auto-style17 {
            align-content:center;
            color:aliceblue;
            font-size:xx-large;
            height: 32px;
        }
        .auto-style18 {
            text-align: right;
            width: 430px;
            color:#ffffff;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <div class="Container">
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/background.jpg"  >
            <table class="auto-style14" >
                <caption class="auto-style17">  
                         <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Form</strong>  
                         <br />
                </caption> 
            <tr>
              <td class="auto-style18" id="uname">
                    Username:
               </td>
                <td class="auto-style16">
                     <asp:TextBox ID="uname" runat="server" Height="27px" Width="162px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="enter user name "></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                    <td class="auto-style18">  Email</td>
                    <td class="auto-style16"> 
                        <asp:TextBox ID="email" runat="server" CssClass="auto-style3" Height="29px" Width="158px"></asp:TextBox>
                    </td>
                    <td class="auto-style5"> 
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="email" ErrorMessage="enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"> password</td>
                    <td class="auto-style16"> 
                        <asp:TextBox ID="pass" runat="server" CssClass="auto-style4" Height="31px" Width="159px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="pass" ErrorMessage="Password lenght 8" ValidationExpression="^[a-zA-Z0-9]{8,10}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">confirm password</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="160px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:CompareValidator ID="CompareValidator3" runat="server" TextMode="Password" ControlToCompare="pass" ControlToValidate="TextBox4" ErrorMessage="enter same password"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                <td text-align="center" class="auto-style16">
                    <asp:Button ID="Button1" runat="server" Text="Register" BackColor="Aqua" Height="37px" Width="84px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style16">Have a account Please<br /> <a href="studlogin.aspx">
                        <asp:Label ID="Label1" runat="server" Text="Login" BorderColor="Black" Font-Bold="True" Font-Size="Larger" ForeColor="Aqua"></asp:Label></a></td>
                    <td class="auto-style5"></td>
                </tr>
            </table>
            <br />
            
        </asp:Panel>


    </div>
    </form>
</asp:Content>
