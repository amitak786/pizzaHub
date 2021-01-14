<%@ page language="java" %>
<%@ page import="java.sql.*,java.util.*,java.util.Date" %>
<%
  
   try{
   Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegancyDateCode=false&serverTimezone=UTC","root","");
   String order_id=request.getParameter("order_id");
   String pizza_type=request.getParameter("pizza_type");
   String pizza_name=request.getParameter("pizza_name");
   String pizza_cost=request.getParameter("pizza_cost");
   String email=(String)session.getAttribute("sessname");
    
   PreparedStatement ps=con.prepareStatement("select * from user where email=? ");
   ps.setString(1,email);
	
   ResultSet rs=ps.executeQuery();
    String phoneno=" ";
   if(rs.next()) {
         phoneno=rs.getString("phoneno");
       }
   System.out.println(phoneno);
   //String phoneno=(String)session.getAttribute("sessphone");
  
   PreparedStatement pstat=con.prepareStatement("insert into order_list values(?,?,?,?,?,?)");
   pstat.setString(1,order_id);
    pstat.setString(2,email);
   pstat.setString(3,phoneno);
   pstat.setString(4,pizza_type);
   pstat.setString(5,pizza_name);
   pstat.setString(6,pizza_cost);
  int z=pstat.executeUpdate();
   response.sendRedirect("billing.jsp");
}
catch(Exception e)
   {
     out.println(e);
   }   
%>
