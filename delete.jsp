<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
                        <%
try{ 
String id = request.getParameter("d");
                           int no = Integer.parseInt(id);
                           Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useSSL=false&serverTimezone=UTC","root","");
                           Statement st = con.createStatement();
                           st.executeUpdate("DELETE from order_list where order_list.order_id='"+no+"'");
                           response.sendRedirect("orders.jsp");
                           }
                           catch(Exception e){
                           out.println(e);
                           }
                           %>