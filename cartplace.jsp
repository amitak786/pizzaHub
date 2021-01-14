<%@page import="java.sql.*"%>
<% 
		String email=(String)session.getAttribute("sessname"); 
	    String cart_id=request.getParameter("cart_id");
       Connection con;
       PreparedStatement p,pd;
       ResultSet rs;
       Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegancyDateCode=false&serverTimezone=UTC","root","");
      String order_id=request.getParameter("order_id");
  p=con.prepareStatement("select * from cart_list where cart_id='"+cart_id+"' and email='"+email+"'");
    rs=p.executeQuery();
   
   String pizza_type=" ";
   String pizza_name=" ";
   String pizza_cost=" ";
    PreparedStatement ps=con.prepareStatement("select * from user where email=? ");
   ps.setString(1,email);
	
   ResultSet rs1=ps.executeQuery();
    String phoneno=" ";
   if(rs1.next()) {
         phoneno=rs1.getString("phoneno");
       }
   System.out.println(phoneno);
   if(rs.next()) {
          pizza_type=rs.getString("pizza_type");
          pizza_name=rs.getString("pizza_name");
          pizza_cost=rs.getString("pizza_cost");
       }
   System.out.println(phoneno);
   PreparedStatement pstat=con.prepareStatement("insert into order_list values(?,?,?,?,?,?)");
  pstat.setString(1,order_id);
   pstat.setString(2,email);
   pstat.setString(3,phoneno);
   pstat.setString(4,pizza_type);
   pstat.setString(5,pizza_name);
   pstat.setString(6,pizza_cost);
   int z=pstat.executeUpdate();
     pd=con.prepareStatement("Delete from cart_list where cart_id='"+cart_id+"' and email='"+email+"'");
      
      pd.executeUpdate();
   response.sendRedirect("billing.jsp");
     
      %>
    