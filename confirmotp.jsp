<%@ page language="java"%>
<%@ page import="java.sql.*,java.util.*"%>

    
    <html>
<head>
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
<body>
    
    
       <ul class="navbar-nav ml-auto">
	          

            
	        </ul>
    
    <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>OTP</h1>
        <form action="checkotp.jsp" method="post">
            <input type="text" name="otp" placeholder="OTP" style=" border: none;
                                                                                   border-bottom: 1px solid #fff;
                                                                                   background: transparent;
                                                                                   outline: none;
                                                                                   height: 40px;
                                                                                   color: #fff;
                                                                                   font-size: 16px;" autocomplete="off"required>
            <a href="#"><input type="submit" name="" value="submit"></a>
        </form>
        
    </div>
    </body>
</head>
</html>

