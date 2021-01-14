<html>
    <head>
        <% if(session.getAttribute("sessname")==null){
           %>
        
            <% } else {%>
<script language="javascript" type="text/javascript">
    window.history.forward();
    </script>
    
<%   } %>
        </head>
</html>
<%@ page language="java"%>
<%@ page import="java.sql.*,java.util.*"%>
<%
   
   String uname=request.getParameter("email");
       
           session.setAttribute("sessname",uname);
  
try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCopliantTimezoneShift=true&useLegacydatetimeCode=false&serverTimezone=UTC","root","");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	
	PreparedStatement ps=con.prepareStatement("select * from user where email=? AND password=? ");
   ps.setString(1,email);
	ps.setString(2,password);
   ResultSet rs=ps.executeQuery();
   
   if(rs.next()) {
        String p=rs.getString("phoneno");
        String email1=rs.getString("email");
        String pass1= rs.getString("password");
   System.out.println(p);
       
   String site1 = "index.jsp";
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location",site1);
   
   if(rs.getString("email").equals("admin@gmail.com") & rs.getString("password").equals("12345"))
   {
   String site = "orders.jsp";
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location",site);
   }
}
   else{
   %>
    <script type="text/javascript">
    window.alert("enter proper input");
        window.location = "login.jsp";
    </script>

        <%
           session.removeAttribute("sessname");
   }
}
catch(Exception e)
{
	out.println(e);
}
%>