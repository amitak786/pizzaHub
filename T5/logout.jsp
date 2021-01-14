<%
   if (session.getAttribute("sessname")==null)
   {
   response.sendRedirect("login.jsp");
   }
   else
   {
   session.removeAttribute("sessname");
   response.sendRedirect("login.jsp");
   }   
%>