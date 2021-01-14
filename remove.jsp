<%@page import="java.sql.*"%>
<% 
		String id=(String)session.getAttribute("sessname"); 
	    String cart_id=request.getParameter("cart_id");
       Connection con;
       PreparedStatement p;
       ResultSet rs;
       Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegancyDateCode=false&serverTimezone=UTC","root","");
      p=con.prepareStatement("Delete from cart_list where cart_id='"+cart_id+"' and email='"+id+"'");
      
      p.executeUpdate();
       out.print("<script>setTimeout(function() {window.location.href='mycart.jsp'}); </script> ");
      %>