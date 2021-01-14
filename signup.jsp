<html>
<head>
<title>Sign-up</title>
    <link rel="stylesheet" type="text/css" href="css/signup.css">
    <style>
    
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button { -webkit-appearance: none; margin: 0;}
        
    </style>
<body>
     <%
         String email=request.getParameter("email");
          session.setAttribute("sessname",email);
          String phone=request.getParameter("phoneno");
          session.setAttribute("sessphone",phone);
         
          
        %>
    
    <ul class="navbar-nav ml-auto">
	          
                <li><a href="index.jsp">Home</a></li>
                <li><a href="vegpizza.jsp">Veg</a></li>
                <li><a href="nonvegpizza.jsp">Non-Veg</a></li>
                <li><a href="index.jsp#location">Location</a></li>
                <li><a href="index.jsp#contact us">Contact us</a></li>
                <li><a href="index.jsp#about us">About us</a></li>
                

            
	        </ul>
    
    
    
    <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Register Here</h1>
        <form action="login.jsp" method="post">
            <input type="text" name="name" placeholder="Name" autocomplete="off" required>
            
            <input type="email" name="email" placeholder="Email" style=" border: none;
                                                                                   border-bottom: 1px solid #fff;
                                                                                   background: transparent;
                                                                                   outline: none;
                                                                                   height: 40px;
                                                                                   color: #fff;
                                                                                   font-size: 16px;" autocomplete="off" required>
            
            <input type="text" name="phoneno" pattern="[0-9]{10}" maxlength="10" placeholder="Phone number" autocomplete="off" required>
            
            <input type="password" name="password" placeholder="Password" autocomplete="off" required >
            
            <input type="text" name="address" placeholder="Address" autocomplete="off" required >
            <!--<p>Confirm Password</p>
            <input type="password" name="" placeholder="Confirm your password" required maxlength="8">-->
            <label><input type="checkbox" style="color: white" required>I agree the Terms and Conditions</label><br>
            <a href="index.html">
                <input type="submit" class="button" value="Register">
            </a>
           
            <a href="login.jsp">Already have an account?</a>
            
            
            
            
            
            
        </form>
        
    </div>

</body>
</head>
</html>