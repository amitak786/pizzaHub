<html>
<head>
        <title>output page:fetching values from session</title>
    <script language="javascript" type="text/javascript">
    window.history.forward();
    </script>
    </head>
    <body>
        <% 
           String name=(String)session.getAttribute("sessname");
           out.println("hello user : ur entered name is "+name);

           %>
                    <button onclick="window.location.href='logout.jsp'">logout</button>
    </body>
</html>