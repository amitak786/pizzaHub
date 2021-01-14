<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="java.sql.*" %>
	<%
    System.out.println("----------------------------------");
	
	String uname=session.getAttribute("sessname").toString();
	
	
    Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useSSL=false&serverTimezone=UTC","root","");
    %>

<html>
<head>
<title>Modify Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<style>
 body {
   
             margin:0px;
    background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.7)),url(p5.jpg);
    background-repeat: no-repeat;
    background-size:100% 70%;
    overflow: hidden;
    height:145%;
}
        
        .sidenav{
		   font-family: 'Lobster', cursive;
		 
            height:100%;
            width:13%;
            position: fixed;
            background-color: white;
            padding-top: 0px;
			opacity:70%;
        }
        .sidenav a
        {
            padding: 16px 8px 8px 18px;
            font-size: 20px;
            text-decoration: none;
			border:2px solid black;
			border-radius:7px;
            color: black;
            display: block;
        }
        .sidenav a:hover{
            background-color:grey;
        }
         a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

 a.active {
  background-color:dimgrey;
  color: white;
  
}

 a:hover:not(.active) {
  background-color: #555;
  color: white;
}
.xyz{
    display: block;
    margin-top: 0em;
    margin-block-end: 1em;
}
.user{text-align: center;
padding-top: 5%;
    margin-bottom: 3%;
    color: white;
}
	td{
		color: white;
}
.btn btn-success{
	background-color:green;

}

	
</style>
</head>
<body>
        <div class="sidenav">
            <a href="home.html" >Home</a>
            <a class="active "href="#" >My profile</a>
            <a href="billing.jsp" >My orders</a>
            <a href="mycart.jsp" >My cart</a>
            <a href="changepwd.jsp" >Change password</a>
            <a href="logout.jsp" >Logout</a>
        </div>
		
		<% String query="select * from conn.user where email='"+uname+"'";
	                                                        Statement st=con.createStatement();
	                                                        rs=st.executeQuery(query);
	                                                        while(rs.next()){
	                                                        	
	                                                        	uname=rs.getString("email");
	                                                        	request.getSession().setAttribute("sessname", uname); 
	                                                        %>
						 <h1 class="user">User details</h1>
						 <form class="xyz"action="editChanges1.jsp"  >
						 <div class="xyz">
<table border="0" cellspacing="4" cellpadding="9" align="center" class="b">
<tr>
<td>name : </td>
<td><input type="text" name="name" id="Username" value="<%=rs.getString("name")%>"></td>
</tr><tr>
<td>address : </td>
<td><input type="text" name="address" id="address" value="<%=rs.getString("address")%>"></td>
</tr>
<tr>
<td>Phoneno : </td>
<td><input type="text" name="phoneno" id="phone" value="<%=rs.getString("phoneno")%>"></td>
</tr>
<tr>
<td>Email : </td>
<td><input type="text" name="email" id="email" value="<%=rs.getString("email")%>" readonly></td>
</tr>
<tr>
<td><input type = "submit" value = "Save changes" class="btn btn-success"></td>
</tr>

<%}%>
</%>
	</%>

</table>
 </div>

</form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script src="script.js"></script>
	</body>
</html>