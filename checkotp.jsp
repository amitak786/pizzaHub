<html>
<head>
    <title>checkotp</title>
<%@ page language="java"%>
<%@ page import="java.sql.*,java.util.*"%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCopliantTimezoneShift=true&useLegacydatetimeCode=false&serverTimezone=UTC","root","");
	String otp=request.getParameter("otp");
	
	PreparedStatement ps=con.prepareStatement("select * from otp where otp=?");
	ps.setString(1,otp);
   
    ResultSet rs=ps.executeQuery();
   
  
   
   if(rs.next()) { 
   
    String email = rs.getString("email");
	
	PreparedStatement ps1=con.prepareStatement("DELETE FROM otp WHERE email=?");
	ps1.setString(1,email);
	
	
	int x=ps1.executeUpdate();
   
   
   String site = "changepassword.jsp";
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location",site);
   }
   else
   { 
  
   %>
    <script type="text/javascript">
    window.alert("enter proper input");
        window.location = "confirmotp.jsp";
    </script>
    <%    
  }
}
catch(Exception e)
{
	out.println(e);
}
%>

        </head>
  
    </html>