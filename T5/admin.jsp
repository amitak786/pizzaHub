<!doctype html>
<html>
<head>
    <title>Admin</title>
    <%@ page language="java"%>
<%@ page import="java.sql.*,java.util.*"%>
    <style>
        body{
            background-image: url("pizzza.jpg");
            background-size: cover;
            position: absolute;
  
        }
        ul{
            list-style-type: none;
            background-color: transparent;
            margin: 0px;
            padding: 8px;
            overflow: hidden;
             font-size: 20px;
        }
        li.home{
           
            color: white;
            display: inline-block;
            padding: 16px;
            background-color: darkred;
            text-decoration: none;
            font-size: 25px;
            position: sticky;
            
        }

        
        li.logout{
            float: right;
             display: inline-block;
            color: white;
            padding: 16px;
            background-color: darkred;
            font-size: 25px;
            text-decoration: none;
            margin-left: 950px;
            
        }
        li.user{
            float:right;
            display:inline-block;
            color: white;
            padding: 16px;
            background-color: darkred;
            font-size: 25px;
            text-decoration: none;
            margin-right: 600px;
            margin-bottom: 0px;
            
           
        }
        

        a{
            text-decoration: none;
            color: gold;
        }

        div{
            color: black;
            background-color: white;
            
        }
        table{
            border: 2px solid black;
            border-collapse: separate;
            background-color: oldlace;
        }
        th{
            border-bottom: 2px solid black;
            border-bottom-style: solid;
        }
        th,td{
            padding: 35px;
            color: chocolate;
        }
        h3 span{
            color: beige;
            background-color: black;
            font-size: 40px;
            text-align: center;
            margin-left: 500px;
        }

  
    </style>
    </head>
<body>
    <span>
    <ul>
        <li class="home"><a href="index.html"> Back to Homepage</a></li>
     <li class="logout"><a href="logout.jsp">Logout</a></li>
        <li class="user"><a href="#">User</a></li>
    </ul>
    </span>
    
    
    <h3><span><center>ORDERS</center></span></h3>
    <span style="background-color: white; color: black;">
        
    <%
       try 
       {
       String connectionUrl = "jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
       Class.forName("com.mysql.jdbc.Driver");
       java.sql.Connection con = DriverManager.getConnection(connectionUrl, "root","");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("SELECT * from orders;");
       %><table border=0 align=center style="text-align:center ">
        <thead>
        <tr>
            <th>Order No</th>
            <th>Name</th>
            <th>Email ID</th>
            <th>Phone No</th>
            <th>Quantity</th>
            <th>Cost</th>
            <th>Status</th>
            </tr>
        </thead>
        <tbody>
        <%while(rs.next())
                           {
                           %>
            <tr>
            <td><%=rs.getString("order_no") %></td>
                <td><%=rs.getString("name") %></td>
                <td ><a href=""><%=rs.getString("email") %> </a></td>
                        <td><%=rs.getString("phone") %></td>
                            <td><%=rs.getString("quantity") %></td>
                                <td><%=rs.getString("cost") %></td>
                                    <td><%=rs.getString("status") %></td>
            </tr>
                           <%}%>
                               <%
                                  st.close();
                                  con.close();
                                  }
                                  catch(Exception e){
                                  out.print(e.getMessage());
                                  }
                                  %>
                                                   
                
        </tbody>
            </table><br>                                               
    </span>
</body>
</html>