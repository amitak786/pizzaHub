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
<title>Change password</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<style>
 body {
   
             margin:0px;
    background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.7)),url(p1.jpg);
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
    margin-top: -2em;
    margin-left: 2px;
    margin-block-end: -2em;
	}
	
	.user{text-align: center;
padding-top: 5%;
    margin-bottom: 3%;
    color: white;
}
td{
color:white;
}
.btn btn-success{
background-color:green;}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body>
<script language="javascript">
function fncSubmit()
{

if(document.changepwd.OldPassword.value == "")
{
alert('Please input old password');
document.changepwd.OldPassword.focus();
return false;
} 

if(document.changepwd.newpassword.value == "")
{
alert('Please input Password');
document.changepwd.newpassword.focus(); 
return false;
} 

if(document.changepwd.conpassword.value == "")
{
alert('Please input Confirm Password');
document.changepwd.conpassword.focus(); 
return false;
} 

if(document.changepwd.newpassword.value != document.changepwd.conpassword.value)
{
alert('Confirm Password Not Match');
document.changepwd.conpassword.focus(); 
return false;
} 

document.changepwd.submit();
}
</script>
            <div class="sidenav">
            <a href="home.html" >Home</a>
            <a href="userprofile1.jsp">My profile</a>
            <a href="billing.jsp">My orders</a>
            <a href="mycart.jsp" >My cart</a>
            <a class="active" href="changepwd_process.jsp" >Change password</a>
            <a href="logout.jsp" >Logout</a>
            </div>
			<% String query="select * from conn.user where email='"+uname+"'";
	                                                        Statement st=con.createStatement();
	                                                        rs=st.executeQuery(query);
	                                                        while(rs.next()){
	                                                        	
	                                                        	uname=rs.getString("email");
	                                                        	request.getSession().setAttribute("sessname", uname); 
	                                                        %>


<table align="center" >

<h1 class="user">Change password</h1>
<form name="ChangePasswordForm" method="post" action="changepwd_process.jsp" OnSubmit="return fncSubmit() class="xyz";">
				
//<form action="changepwd_process.jsp" method="post" class="xyz">

<table border="0" cellspacing="4" cellpadding="9" align="center">

<td>Old Password</td>
<TD><input name="OldPassword" type="password" id="OLDpwd" size="20" required></td>
</tr>
<tr>
<td>New Password</td>
<td><input name="newpassword" type="password" id="newpassword">
</td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input name="conpassword" type="password" id="conpassword">
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="change password" class="btn btn-success"></td>
</tr>
<%}%>
</%>
	</%>

</table>
</form>
<<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script src="script.js"></script>
	</body>
</body>
</html>