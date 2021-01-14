<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="java.sql.*" %>
	<%
    System.out.println("----------------------------------");
	
	String uname=session.getAttribute("sessname").toString();
	
	
    Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useSSL=false&serverTimezone=UTC","root","");
    %>

<html>
<head>
<title>Modify Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<style>
 body {
   
             margin:0px;
    background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.7)),url(p5.jpg);
    background-repeat: no-repeat;
    background-size:100% 70%;
    overflow: hidden;
    height:145%;
}
        
        .sidenav{
		   font-family: 'Lobster', cursive;
		 
            height:100%;
            width:15%;
            position: fixed;
            background-color: darkred;
            padding-top: 0px;
/*			opacity:70%;*/
        }
        .sidenav a
        {
            padding: 16px 8px 8px 18px;
            font-size: 30px;
            text-decoration: none;
			border:2px solid black;
/*			border-radius:7px;*/
            color: white;
            display: block;
        }
        .sidenav a:hover{
            background-color: chocolate;
        }
         a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

 a.active {
  background-color: chocolate;
  color: white;
  
}

 a:hover:not(.active) {
  background-color: chocolate;
  color: white;
}
.xyz{
    display: block;
    margin-top: 0em;
    margin-block-end: 1em;
}
.user{text-align: center;
padding-top: 5%;
    margin-bottom: 3%;
    color: white;
}
	td{
		color: white;
}
.btn btn-success{
	background-color:green;

}
      table.scrolldown{
            border: 2px solid black;
            border-collapse: separate;
            background-color: oldlace;
            margin-left: 320px;
/*            height: 10%;*/
/*        overflow-y: scroll;*/
        width: 1000px;
          height: 500px;
          border-bottom: 2px solid black;
        }
        th{
            border-bottom: 2px solid black;
            border-bottom-style: solid;
        }
        th,td{
            padding: 35px;
            color: chocolate;
            align-content: center;
        }
    tr th{width: 5%;}
    tr td{width: 5%;}
    
        h3 span center{
            color: beige;
            font-size: 40px;
            text-align: center;
            margin-left: 300px;
            
        }
    table.scrolldown tbody {
        height: 570px;
        overflow-y: auto;
        overflow-x: auto;
        width: 1000px;
        height: 500px;
        
    }

    table.scrolldown tbody, table.scrolldown thead {
        display: block;
    }

	
</style>
</head>
<body>
        <div class="sidenav">
            <a href="index.html" >Home Page</a>
            <a class="active "href="orders.jsp" >Orders</a>
            <a href="users.jsp" >Users</a>
            <a href="logout.jsp" >Logout</a>
        </div>
    		
     <h3><span><center>Order Details</center></span></h3>
    <span style="background-color: white; color: black;">
        
	<%	try{				 
     Statement st=con.createStatement();
       rs=st.executeQuery("SELECT * from order_list;");
       %><table class="scrolldown" border=0 align=center style="text-align:center ">
        <thead>
        <tr>
            <th>Order ID</th>
            <th>Email ID</th>
            <th>Phone No</th>
            <th>Pizza Type</th>
            <th>Pizza Name</th>
            <th>Cost</th>
            <th> Action</th>
            </tr>
        </thead>
        <tbody>
        <%while(rs.next())
                           {
                           %>
            <tr>
            <td><%=rs.getString("order_id") %></td>
                <td><%=rs.getString("email") %></td>
                <td ><%=rs.getString("phoneno") %> </a></td>
                <td ><%=rs.getString("pizza_type") %> </a></td>
                        <td><%=rs.getString("pizza_name") %></td>
                            <td><%=rs.getString("pizza_cost") %></td>
                                 <td><a href="delete.jsp?d=<%=rs.getString("order_id")%>" class="btn btn-danger">Delete</a>
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

</table>
 </div>
		

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script src="script.js"></script>
	</body>
</html>