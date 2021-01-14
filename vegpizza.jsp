<!DOCTYPE html>
<html>
<head>
    <title>Veg Pizza</title>
     <link rel="stylesheet" type="text/css" href="css/vegpizza.css">
<script>
        setInterval(ife ,1000);
  function ife(){
      if( document.getElementById("r1").checked == true)
           document.getElementById("r2").checked = true;
      else if( document.getElementById("r2").checked == true)
           document.getElementById("r3").checked = true; 
      else if( document.getElementById("r3").checked == true)
           document.getElementById("r4").checked = true; 
      else if( document.getElementById("r4").checked == true)
           document.getElementById("r5").checked = true;
      else
           document.getElementById("r1").checked =true;
  }
    </script>
    <style>
        *{
            font-size: 1.5vw;
        }
        div{
        color: white;
        padding: 0 0 0 0;
       font-size: 17px;
       width: 240px;
       height: 50px;
       overflow: auto;
            
    }
b{
    padding:0px;
    
}
span{
     padding: 0px;
       font-size: 20px;
       width: 150px;
       height: 400px;
       overflow: hidden;

    
}




/*button{
    font-family: serif;
    border: 1px solid #fff;
    padding: 30px 15px;
    color: #fff;
    text-decoration: none;
    transition: 0.6s;
}

button:hover{
    background-color: #fff;
    color: #000; 
}*/
.floated{
    
    height: 30px;
    width: 100px;
    font-size: 15px;
    margin: 1%;
    font-family: serif;
    padding: 0px;
    border: 1px solid black;
    border-radius: 5px;
    color: #000;
    text-decoration: none;
    transition: 0.6s;
    cursor: pointer;
}


.floated:hover{
    background-color: lightcyan;
    color: darkslategrey;
}


body{
    background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(food.png) ;

}
h1{
    color: white;
    font-family: cursive;
    margin-left: 1%;
}
p{
    font-size: 15px;
    margin-left: 1%;
    overflow: hidden;
}

/*.btn{
    font-family: serif;
    border: 1px solid #fff;
    padding: 10px 30px;
    color: #fff;
    text-decoration: none;
    transition: 0.6s ease;
}

.btn:hover{
    background-color: #fff;
    color: #000; 
}*/


.column {
  float: left;
  width: 45%;
  padding: 0px;
    height: 400px;
}

/* Clearfix (clear floats) */
  content: "";
  clear: both;
  display: table;
}
        
        
    </style>
</head>
<body>

            <ul >
 

                    <li><a href="index.html#about us">About us</a></li>
                    <li><a href="index.html#contact us">Contact us</a></li>

                    <li><a href="index.html#location">Location</a></li>
                 <% if(session.getAttribute("sessname")==null){ %>
                    <li><a href="login.jsp">Login</a></li>
                     <% } else { %>
                     <li><a href="logout.jsp">Logout</a></li>    
                         <% } %>
                    <li><a href="nonvegpizza.jsp">Non-veg</a></li>

                     <li><a href="index.jsp">Home</a></li>
               

             </ul>
  <div class="slidershow ">

      <div class="slides" >
        <input type="radio" name="r" id="r1" checked><!-- radio button making first position checked-->
        <input type="radio" name="r" id="r2">
        <input type="radio" name="r" id="r3">
        <input type="radio" name="r" id="r4">
        <input type="radio" name="r" id="r5">
        <div class="slide s1" style= "height: 700px">
          <img src="Images/V/vpizza1.jpg" alt="">
        </div>
        <div class="slide" style=" height: 700px">
          <img src="Images/NV/nvpizz2.jpg" alt="">
        </div>
        <div class="slide" style="height: 700px">
          <img src="Images/V/vpizza2.jpg" alt="">
        </div>
        <div class="slide" style="height: 700px">
          <img src="Images/NV/nvpizza4.jpg" alt="">
        </div>
        <div class="slide" style="height: 700px">
          <img src="Images/V/vpizza8.jpg" alt="">
        </div>
      </div>

      <div class="navigation">
        <label for="r1" class="bar"></label><!--this label is for r1 means if u click this then radio button r1 get checked -->
        <label for="r2" class="bar"></label>
        <label for="r3" class="bar"></label>
        <label for="r4" class="bar"></label>
        <label for="r5" class="bar"></label>
      </div>
    </div>
    <br>
    <h1 style="margin-top: 90vmin"></h1>
    <h1 style="font-size: 30px;"> Veg Pizza's
<p>Choices are more, Just scroll</p>
</h1>
    <span class="cart" >
        
<span class="row">
    
    <span class="column" style="margin-left: 2.5%">
    <img src="Images/V/vpizza1.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 249</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Paneer Pepperoni</b></p>
        <p>Size: Medium</p>
    <div style="margin: 1%">Delightful combination of spicy red peprika, capsicum and paneer.</div> 
        
        
        
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=249&pizza_type=Veg&pizza_name=Paneer+Pepperoni'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=249&pizza_type=Veg&pizza_name=Paneer+Pepperoni'" value="Order now">
         </span>
        
    
       
    <span class="column" style="margin-left: 2.5%">
     <img src="Images/V/vpizza2.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 499</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Paneer Margherita</b></p>
        <p>Size: Large</p>
    <div style="margin: 1%">Classic pizza loaded with 100% moziralla cheese.</div>
        
        
        
        <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=499&pizza_type=Veg&pizza_name=Paneer+Margherita'"  value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=499&pizza_type=Veg&pizza_name=Paneer+Margherita'"  value="Order now">
             </span>
    
    
     <br><span class="column" style="margin-left: 2.5%">
     <img src="Images/V/vpizza3.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 349</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Paneer Makhani Supreme</b></p>
    <p>Size: Medium</p>
    <div style="margin: 1%">Supreme combination of makhani sauce, paneer, onion and capsicum.</div>
    
    
    
        <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=349&pizza_type=Veg&pizza_name=Paneer+Makhani+Supreme'"  value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=349&pizza_type=Veg&pizza_name=Paneer+Makhani+Supreme'"  value="Order now">
             </span>
    
    <span class="column" style="margin-left: 2.5%">
    <img src="Images/V/vpizza4.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 499</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Cheesy Tomato N Onion</b></p>
        <p>Size: large</p>
    <div style="margin: 1%">Delightful combination of onion and juicy tomato.</div>
    
       
        
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=499&pizza_type=Veg&pizza_name=Cheesy+Tomato+N+Onion'"  value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=499&pizza_type=Veg&pizza_name=Cheesy+Tomato+N+Onion'"  value="Order now">
         </span>
        
     <span class="column" style="margin-left: 2.5%">
    <img src="Images/V/vpizza5.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 399</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Mushroom Paradise</b></p>
         <p>Size: Medium</p>
    <div style="margin: 1%">Loaded with 2 types of cheese and garlic herb sauteed mushrooms.</div>
         
         
    
       <input type="button" class="floated" id="slide_addtocart_button"  onclick="window.location.href='addcart.jsp?pizza_cost=399&pizza_type=Veg&pizza_name=Mushroom+Paradise'"  value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=399&pizza_type=Veg&pizza_name=Mushroom+Paradise'"  value="Order now">
         </span>
    
     <span class="column" style="margin-left: 2.5%">
    <img src="Images/V/vpizza6.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 299</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Baby Corn</b></p>
         <p>Size: Medium</p>
    <div style="margin: 1%">Awesome combination of baby corn, cheese, onion and capsicum.</div>
         
         
    
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=299&pizza_type=Veg&pizza_name=Baby+Corn'"  value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=299&pizza_type=Veg&pizza_name=Baby+Corn'"  value="Order now">
         </span>
    
     <span class="column" style="margin-left: 2.5%">
    <img src="Images/V/vpizza7.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 549</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Redpepper N Sweet corn</b></p>
         <p>Size: large</p>
    <div style="margin: 1%">Flavorful twist with the sweet corn and spicy red pepper.</div>
         
         
    
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=549&pizza_type=Veg&pizza_name=Redpepper+N+Sweet+corn'"  value="Add to cart">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=549&pizza_type=Veg&pizza_name=Redpepper+N+Sweet+corn'"  value="Order now">
         </span>
    
     <span class="column" style="margin-left: 2.5%; width: 280px" >
    <img src="Images/V/vpizza8.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 599</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Pesto Pepperoni N Mushroom</b></p>
         <p>Size: Large</p>
    <div style="width: 240px;height: 60px;" >Combination of pesto sauce and moziralla sauce topped with mushroom,red pepper and onion.</div>
         
         
         
    <span style="font-size: 2vw">
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=599&pizza_type=Veg&pizza_name=Pesto+Pepperoni+N+Mushroom'"  value="Add to cart">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=599&pizza_type=Veg&pizza_name=Pesto+Pepperoni+N+Mushroom'"  value="Order now">
         </span>
         
         </span>
    
    
    
    
    
    
        </span>
        
            
</span>
    
    

    
</body>
</html>
