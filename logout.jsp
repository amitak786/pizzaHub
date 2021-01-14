<%
   if (session.getAttribute("sessname")==null)
   {
   response.sendRedirect("index.jsp");
   }
   else
   {
   session.removeAttribute("sessname");
   response.sendRedirect("index.jsp");
   }   
%>