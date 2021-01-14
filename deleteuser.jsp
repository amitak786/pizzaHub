<%@page import="java.sql.Statement"%>
    <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.Connection"%>
                        <%
try{ 
String id = request.getParameter("e");
                           
                           Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useSSL=false&serverTimezone=UTC","root","");
                           Statement st = con.createStatement();
                           st.executeUpdate("DELETE from user where email='"+id+"'");
                           response.sendRedirect("users.jsp");
                           }
                           catch(Exception e){
                           out.println(e);
                           }
                           %>