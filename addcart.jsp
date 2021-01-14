<%@ page language="java" %>
<%@ page import="java.sql.*,java.util.*,java.util.Date" %>
<%
        Connection con;
        PreparedStatement pst;
    try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegancyDateCode=false&serverTimezone=UTC","root","");
      String user_id=(String)session.getAttribute("sessname");
   String pizza_type=request.getParameter("pizza_type");
   String pizza_name=request.getParameter("pizza_name");
   String pizza_cost=request.getParameter("pizza_cost");
   String cart_id=request.getParameter("cart_id");
   pst=con.prepareStatement("insert into cart_list values(?,?,?,?,?)");
    pst.setString(1,cart_id);
   pst.setString(2,user_id);
   pst.setString(3,pizza_type);
   pst.setString(4,pizza_name);
   pst.setString(5,pizza_cost);
   int y=pst.executeUpdate();
   response.sendRedirect("mycart.jsp");
         }
            catch(Exception e)
          {  
            out.println(e);
   
            }
    %>