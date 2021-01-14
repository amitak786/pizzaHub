<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%

String uname=request.getParameter("email");
	System.out.println(uname);
	session.setAttribute("sessname", uname);

String emails=request.getParameter("email");
String name=request.getParameter("name");
String address=request.getParameter("address");
String phoneno=request.getParameter("phoneno");

if(emails != null)
{
Connection con = null;
PreparedStatement ps = null;

String personID =uname;
System.out.println(personID);
try
{
	 Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useSSL=false&serverTimezone=UTC","root","");
	String sql="update user set name=?,address=?,phoneno=? where email='"+uname+"'";

	Statement st=con.createStatement();
	ps = con.prepareStatement(sql);
	ps.setString(1,name);
	ps.setString(2,address);
	ps.setString(3,phoneno);
	System.out.println(personID);
	System.out.println(name);
	System.out.println(address);
	System.out.println(phoneno);
	int i = ps.executeUpdate();
	if(i > 0)
	{
		System.out.println("Success");

		out.print("<script> alert('Changes Saved');" +
	"setTimeout(function() {window.location.href='home.html'});</script>");
	}
	else
	{
		System.out.println("Failed");

	out.print("<script>alert('There is a problem in updating Record.');</script>");
	}
}
	
catch(SQLException sql)
{
	System.out.println("SQLException"+sql);
    request.setAttribute("error", sql);
    out.println(sql);
}

catch(Exception sql1)
{
	System.out.println("Exception"+sql1);
	request.setAttribute("error", sql1);
	out.println(sql1);
}
finally {
	con.close();
	ps.close();
}
}
  else {
	System.out.println("Null");

}
%>