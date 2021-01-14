<!DOCTYPE html>
<html>
    
  

    <head>
     <title>  PIZZA HUB </title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <style>
            span{
                font-size: 25px;
                font-family: 'Russo One', sans-serif;
            }
        </style>
    </head>
    <body>
        
        <header>
           
        <div class="main">
            <div class="logo">
            <img src ="pic.png">
            </div>
            <ul>
                <li class="active"><a href="#">Home</a></li>
                <% if(session.getAttribute("sessname")==null){ %>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="signup.jsp">Sign-up</a></li>
                 <% } else {%>
                <li><a href="userprofile1.jsp">profile</a></li>
                <li><a href="logout.jsp">Sign-out</a></li>
                <%}%>     
                <li><a href="#location">Location</a></li>
                <li><a href="#contact us">Contact us</a></li>
                <li><a href="#about us">About us</a></li>
            </ul>
            </div>
            
        
                
                
                <div class="title">
            <h1 style="font-size: 3vw ">The Tastiest Pizza, Taste and Love </h1>
            </div>
            
            <div class="button">
                 <a href="vegpizza.jsp" class="btn1">VEG PIZZA</a>
                 <a href="nonvegpizza.jsp" class="btn2">NON VEG PIZZA</a>
            </div>
        </header>
            
        
        
            
        
        
           <h1><a name="location">Location</a></h1>
        
        
        <!--div style=" box-sizing: border-box;position: absolute;left: 50%;background: gray; transform:translate(-50%,-50%); background-image: url(p1.jpg)">
        <a href="https://www.google.com/maps/place/Sri+Janatha+Darshini/@16.2073116,77.3544207,17z/data=!3m1!4b1!4m5!3m4!1s0x3bc9d774a509bd17:0xd4140f3bb27dbd1a!8m2!3d16.2073116!4d77.3566094" class="btn">Google maps</a>
        </div>--><!--this is a button that directly links to google maps of the location-->
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3831.2552616513053!2d77.35442071486038!3d16.207311588795733!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc9d774a509bd17%3A0xd4140f3bb27dbd1a!2sSri%20Janatha%20Darshini!5e0!3m2!1sen!2sin!4v1598122360757!5m2!1sen!2sin" width="100%" height="500vh" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        
            
        <br><h1><a name="contact us">Contact us</a></h1>
               <span style="font-weight: 900"><div style="background-image: url(contact.jpg)"><br>+9194814 73914
                <br><br><b>Opening hours</b>
                   <br><br>Monday to Sunday
                   <br><br>6:30 AM - 9:30 PM</div>
                     </span>   
        
           <h1><a name="about us">About us</a></h1>
           <p> ABOUT US WE WILL BE COMING SOON</p> 

    </body>

</html>