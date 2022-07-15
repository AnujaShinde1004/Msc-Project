<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ICCS_Canteen.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style/main.css" rel="stylesheet" />
   
    <title></title>
    <style type="text/css">
    

        .c{
    width: 1100px;
    height: auto;
    margin: auto;
    background-color: #FFFFFF;
}

.divbody {
    width: 100%;
    margin: 10px 0px;
}
.ab{
    color:#3eadd7;
    font-size:20px;
    align-content:center;
}
        
        .auto-style3 {
            text-align: right;
            width: 1078px;
            height: 81px;
            font-size:20px;
            
        }
        .auto-style4 {
            text-align: center;
            width: 163px;
            height: 78px;
        }
        .auto-style5 {
            height: 103px;
            align-content:center;
        }
    </style>
</head>
<body><form class="c">
     <div class="container">
            <div class="divbody">
    <div class="header">
                  <div flot="center" class="auto-style5">  
                        <a href="index.aspx">                      
                          <img src="images/indira.jfif" class="auto-style4" /></a><strong class="ab" >Indira College Canteen
                          </strong>
                        
                    </div>    
                </div>
                
     <nav id="nav">  
             <ul>
                    <li><a href="index.aspx">Home</a></li>
                    <li><a href="AboutUs.aspx">About Us</a></li>
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                    <li><a href="Feedback.aspx">Feedback</a></li>
                 <li><a href="homePage.aspx">Login</a></li>
             </ul> 
</nav> 
                <br />
               <marquee scrollamount="12" loop="infinit"  id='scroll'  >
 <div onMouseOver="document.getElementById('scroll').stop();" onMouseOut="document.getElementById('scroll').start();">
<img src="images/01.jpg" width="245" height="350" />
<img src="images/02.jpg" width="330" height="350" />
<img src="images/03.jpg" width="324" height="350" />
<img src="images/04.jpg" width="340" height="350" />
</div></marquee>

<br />
         
         <footer id="footer">  
              <span>Created By<a href="https://iccs.ac.in/">@Indira College Of Commerce and Science</a> | <span class="far fa-copyright"></span> 2022 All rights reserved.</span> 
           </footer>  
</div></div>
    </form>
</body>
</html>
