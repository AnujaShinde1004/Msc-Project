<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ICCS_Canteen.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/css2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="bg"></div>
<div class="b">
<form runat="server">
    <div><h2 class="ad">Admin Login</h2></div>
  <div >
     <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-field"   ></asp:TextBox>
  </div>
    <div>
        <asp:RequiredFieldValidator ID="Username" runat="server" ErrorMessage="enter  user name" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>

    </div>
 
    <div><asp:TextBox ID="TextBox1" runat="server" CssClass="form-field"  textmode="Password"   ></asp:TextBox></div>

 
      <div>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter password" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>     
 
                       



 
    </div>
          <div>
      <asp:Button ID="Button1" runat="server"  class="btn" Text="Login" Width="174px" OnClick="Button1_Click" />         

            

      
  </div>
</form>
    </div>


    
</asp:Content>
