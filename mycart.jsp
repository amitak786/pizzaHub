
<%@ page language="java" %>
<%@ page import="java.sql.*,java.util.*,java.util.Date" %>
<%
        Connection con;
        PreparedStatement pst;
    try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegancyDateCode=false&serverTimezone=UTC","root","");
   
    
         }
            catch(Exception e)
          {  
            out.println(e);
   
            }
    %>
<!doctype html>
<html>
<head>
    <title>My Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <style>
        .sidenav{
            font-family: 'Lobster', cursive;
            height:100%;
            width:13%;
            position: fixed;
            background-color: white;
            padding-top: 0px;
			opacity:0.8;
			
        }
        .sidenav a
        {
            padding: 16px 8px 8px 18px;
            font-size: 20px;
            text-decoration: none;
			border:2px solid black;
			border-radius:7px;
            color: black;
            display: block;
        }
        .sidenav a:hover{
            background-color:grey;
        }
        a {
            display: block;
            color: #000;
            padding: 8px 16px;
            text-decoration: none;
        }
        a.active {
            background-color:dimgrey;
            color: white;
        }
        a:hover:not(.active) {
            background-color: #555;
            color: white;
        }
        body{
            background-color:burlywood;
        }
        .cart-page{
            margin-left: 5% ;
        }
        .table{
            width: 100%;
            border-collapse: collapse;
        }
        .cart-info{
            display: flex;
            flex-wrap: wrap;
			margin-left: 4%;
        }
        th{
            text-align: left;
            padding: 5px;
            color: white;
            background: black;
            font-weight: normal;
        }
        td{
            padding: 10px 5px;
        }
        td input{
            width:50px;
            height: 30px;
            padding:5px;
        }
        td a{
            color: black;
            font-size: 15px;
        }
        td img{
            width: 165px;
            height: 165px;
            margin-right: 10px;
        }
        .total-price{
            display: flex;
            justify-content:center;
			padding-left:43%;
        }
        .total-price table{
            border-top:3px solid black;
            width: 100%;
            max-width: 400px;
        }
        td:last-child{
        text-align:justify-all;
        }
        th:last-child{
        text-align: justify-all;
        }
		button{
		margin-right:5%;
		width: 113px;
		}
    </style>
    </head>
    <body>
      
        
            <div class="sidenav">
                <a href="index.jsp" >Home</a>
                <a href="userprofile1.jsp">My profile</a>
                <a href="billing.jsp">My orders</a>
                <a class="active" href="#" >My cart</a>
                <a href="changepwd.jsp" >Change password</a>
                <a href="logout.jsp" >Logout</a>
            </div>
        
        <center>
            <h1>Cart</h1>
            <div class="small-container cart-page">
                <table>
                    <tr class="abc">
                        <th><center>Product</center></th>
                        <th>Quantity</th>
                        <th><th>
                    </tr>
                     <% 
     String id=(String)session.getAttribute("sessname");
     System.out.println(id);
     Statement st;
     Connection conn;
     ResultSet rs;
    try{
   Class.forName("com.mysql.jdbc.Driver");
   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegancyDateCode=false&serverTimezone=UTC","root","");
    st=conn.createStatement();
    rs=st.executeQuery("select * from cart_list where email='"+id+"'");    
      while(rs.next()){
      String email="id";  
      String cart_id=rs.getString("cart_id");
      String pizza_name=rs.getString("pizza_name");
                        System.out.println(cart_id);
      
                        
     %>
                    <tr>
                        <td width="80%">
                            <div class="cart-info">
                                <img src="pizza1.jpeg">
                                <div>
                                    <p><b><%=rs.getString("pizza_name")%></b><br></p><p><%=rs.getString("pizza_type")%><br><small> <%=rs.getString("pizza_cost")%></small></p>
                                    <a id="remove" href="remove.jsp?cart_id=<%=rs.getString("cart_id")%>">Remove</a>
                                </div>
                            </div>
                        </td>
                            <form action=session.jsp>
                                <td><input type="number" name="quantity" value="1" min="1" max="5"></td></form>
                        <td><a type="button" href="cartplace.jsp?cart_id=<%=rs.getString("cart_id")%>">Place Order</a></td>
                    </tr>
        <%
               }
               }
               catch(Exception e){
               
               }
           
         %>
 </table>
</body>
</html>