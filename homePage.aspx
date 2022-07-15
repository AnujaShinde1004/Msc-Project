<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="ICCS_Canteen.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/main.css" rel="stylesheet" />
<style type="text/css">
    .auto-style1 {
        height: 247px;
        width: 1095px;
        margin-right: 5px;
    }
    .auto-style3 {
        height: 258px;
        width: 1090px;
        margin: auto 0px;
        background-color: #FFFFFF;
    }
    .auto-style4 {
        width: 230px;
        height: 105px;
        align-content: center;
        margin-left: 100px;
    }
    .auto-style5 {
        width: 230px;
        height: 107px;
        align-content: center;
        margin-left: 100px;
    }
    .auto-style6 {
        width: 230px;
        height: 110px;
        align-content: center;
        margin-left: 100px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form>
    <div>
                  <img src="images/canteen.jpg"  class="auto-style3" />
            </div>
   <div>        <a href="admin.aspx"> <img src="images/admin.jpg" class="auto-style4" /></a>
                 <a href="stafflogin.aspx"><img src="images/staff.jpg"  class="auto-style5" /></a>
                 <a href="studreglogin.aspx"><img src="images/user.jpg"  class="auto-style6" /> </a>
     </div>  
   
      
    

</form>   
</asp:Content>
