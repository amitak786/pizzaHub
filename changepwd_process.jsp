<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");
String email=(String)session.getAttribute("sessname");

System.out.println(email);
Connection con = null;
Statement st = null;
String pass = "";

try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/conn?useSSL=false&serverTimezone=UTC";
con = DriverManager.getConnection(url, "root", "");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from user where password= '"+ OldPassword + "'");
System.out.println(OldPassword);
if (rs.next()) { 
pass = rs.getString("password");
} 
if(Newpass.equals(conpass))
{
if(pass.equals(OldPassword)) {
st = con.createStatement();
int i = st.executeUpdate("update user set password='"+ Newpass + "' where email='"+email+"'");
System.out.println(Newpass);
out.print("<script> alert('Changes Saved');" +
"setTimeout(function() {window.location.href='home.html'});</script>");


st.close();
con.close();
} else {
out.print("<script>alert('old password is not matching .');"+
"setTimeout(function() {window.location.href='changepwd.jsp'});</script>");

}
}
else{
out.print("<script>alert('new password and confirm password are not matching .');"+
"setTimeout(function() {window.location.href='changepwd.jsp'});</script>");

}
} catch (Exception e) {
out.println(e);
}
%>

