<%@ page language="java"%>
<%@ page import="java.sql.*,java.util.*"%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCopliantTimezoneShift=true&useLegacydatetimeCode=false&serverTimezone=UTC","root","");
	String name=request.getParameter("name");
	String phoneno=request.getParameter("phoneno");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String address=request.getParameter("address");
	
	PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,phoneno);
	ps.setString(3,email);
	ps.setString(4,password);
	ps.setString(5,address);
	
	int x=ps.executeUpdate();
}
catch(Exception e)
{
	out.println();
}
%>
<html>
<head>  
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <style>
        *{
            font-size: 1.2vw;
        }
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
                <li><a href="index.html#location">Location</a></li>
                <li><a href="index.html#contact us">Contact us</a></li>
                <li><a href="index.html#about us">About us</a></li>
                

            
	        </ul>
    
    
    
    <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
        <form action="log.jsp" method="post">
            <input type="email" name="email" placeholder="Email" style=" border: none;
                                                                                   border-bottom: 1px solid #fff;
                                                                                   background: transparent;
                                                                                   outline: none;
                                                                                   height: 40px;
                                                                                   color: #fff;
                                                                                   font-size: 16px;" autocomplete="off"required>
            <input type="password" name="password" placeholder="Password" required>
            <a href="#"><input type="submit" name="" value="Login"></a>
            <a href="forgotpassword.jsp">Forgot password?</a><br>
            <a href="signup.jsp">Don't have an account?</a>
        </form>
        
    </div>

  
</body>
</head>
</html>