<%@ page language="java"%>
<%@ page import="java.sql.*,java.util.*"%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCopliantTimezoneShift=true&useLegacydatetimeCode=false&serverTimezone=UTC","root","");
	String password=request.getParameter("newpassword");
	String password1=request.getParameter("confirmpassword");
   if(password.equals(password1)){
   
	String email=(String)session.getAttribute("sess");
   
	PreparedStatement ps=con.prepareStatement("UPDATE user SET password=? WHERE email=? ");
	ps.setString(1,password);
   ps.setString(2,email);
   
   
	int x=ps.executeUpdate();
   boolean x1 = (x==ps.executeUpdate());
   if(x1)
   {
   session.removeAttribute("sess");
    String site = "index.jsp";
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location",site);
   }
   else
   {
    String site = "changepassword.jsp";
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location",site);
   }
   }
   else{
   %>
   <script type="text/javascript">
    window.alert("enter proper input");
        window.location = "changepassword.jsp";
    </script>
    <%
   }
}
catch(Exception e)
{
	out.println(" ");
}
%>