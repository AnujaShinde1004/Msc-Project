<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="studhome.aspx.cs" Inherits="ICCS_Canteen.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    
.img {
    width: 270px;
    height: 200px;
    align-content: center;
    margin-left:auto;
    margin-right:auto;
}
  
        
   
  
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> 
    <div>       
        
      
            <div class="welcome"> Welcome to ICCS Canteen</div> 
<marquee scrollamount="12" loop="infinit"  id='scroll' >
 <div onMouseOver="document.getElementById('scroll').stop();" onMouseOut="document.getElementById('scroll').start();">
<img src="images/01.jpg" width="245" height="350" />
<img src="images/02.jpg" width="330" height="350" />
<img src="images/03.jpg" width="324" height="350" />
<img src="images/04.jpg" width="340" height="350" />
</div></marquee>
           
        
    </div>
</asp:Content>
