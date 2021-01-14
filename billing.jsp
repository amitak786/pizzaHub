<%@ page language="java" %>
<%@ page import="java.sql.*,java.util.*,java.util.Date" %>
<%
   try{
   Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegancyDateCode=false&serverTimezone=UTC","root","");
   
   
}
catch(Exception e)
   {
     out.println(e);
   }   
%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Orders</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    
    <style>
	
        body{
            background: url(p6.jpg);
			background-repeat:no-repeat;
			
        }
		.sidenav{
		   font-family: 'Lobster', cursive;
		 
            height:100%;
            width:13%;
            position: fixed;
            background-color: white;
            padding-top: 0px;
			opacity:70%;
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
		
    .invoice-box {
        background-color: #000;
		color:#fff;
		opacity:80%;
        float: center;
        max-width: 600px;
        margin: auto;
        padding: 20px;
        border: 1px solid #000;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: azure;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
      
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 10px;
    }
    
    .invoice-box table tr.heading td {
        background: dimgray;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>
</head>
<body>
 <div class="sidenav">
           <a href="home.html" >Home</a>
            <a href="userprofile1.jsp">My profile</a>
            <a class="active" href="#">My orders</a>
            <a href="mycart.jsp" >My cart</a>
            <a href="changepwd.jsp" >Change password</a>
            <a href="logout.jsp" >Logout</a>
			</div>
			
	
    <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                <img src="pic.png" style="width:100%; max-width:300px height: 200px;">
                            </td>
                            <td>
                            Pizza Hub<br>
                            Opposite to chandramouleshwar temple<br>
                            Karnataka, Bangi Kunta, Raichur-584101<br>
                            Contact us &#128241;<br>
                            +919876543210
                            </td>
                       </tr>
                         </table>
                </td>
            </tr>
            <tr class="information">
                <td colspan="2">
                    <table>
                      <tr>
                        <td>
                            <% Date date = new Date(); %>
                            <%= date %><br>
                            <b>Order Successful</b>
                            </td>
                                <td>
                             The Tastiest Pizza's<br>
                            Love them so Taste them<br>
                            Anything wrong, let us know &#128071;<br>
                             pizzahub@gmail.com<br>
                        
                    </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr class="heading">
                <td>
                    Product Description
                </td>
                <td>
                    Quantity
                </td>
            <%
        String id=(String)session.getAttribute("sessname"); 
        session.setAttribute("sessname", id);
        Connection conn;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegancyDateCode=false&serverTimezone=UTC","root","");
        Statement st=conn.createStatement();
        rs=st.executeQuery("select * from order_list where email='"+id+"'");
               while(rs.next()){
            String email="id";
             
      
                %>
            
            </tr>
                <br>
            <tr class="details">
                <td>
                    <b style="font-size: 20px"><%=rs.getString("pizza_name")%></b><br>
                    <p style="font-size: 15px"><%=rs.getString("pizza_type")%></p>
                </td>
                
                <td>1 </td>
                 </tr>
            <br>
            <tr class="item">
                <td>
                    Pizza price
                </td>
                
                <td> 
                   &#8377;<%=rs.getString("pizza_cost")%>
                </td>
                <tr>
                     
        
                <%
               }
               }
               catch(Exception e){
               }
                %> 
                  <td>     
                    </td> 
                    </table>
    </div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script src="script.js"></script>
</body>
</html>