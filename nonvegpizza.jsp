<!DOCTYPE html>
<html>
<head>
    <title>NON-Veg Pizza</title>
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
        @media only screen and (max-width: 600px) {
         *{
            font-size: 1.5vw;
        }
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
       height: 500px;
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
    padding: 0 0 0 0;
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
    margin-left: 1%
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

                    <li><a href="vegpizza.jsp">Veg</a></li>

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
          <img src="Images/NV/nvpizza9.jpg" alt="">
        </div>
        <div class="slide" style=" height: 700px">
          <img src="Images/V/vpizza8.jpg" alt="">
        </div>
        <div class="slide" style="height: 700px">
          <img src="Images/NV/nvpizza7.jpg" alt="">
        </div>
        <div class="slide" style="height: 700px">
          <img src="Images/V/vpizza1.jpg" alt="">
        </div>
        <div class="slide" style="height: 700px">
          <img src="Images/NV/nvpizza3.jpg" alt="">
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
    <h1 style="font-size: 30px;"> NON-Veg Pizza's
<p>Choices are more, Just scroll</p>
</h1>
    <span class="cart" >
        
<span class="row" >
    
    <span class="column" style="margin-left: 2.5%">
    <img src="Images/NV/nvpizza1.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 499</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Cheesy Chicken Delight</b></p>
        <p>Size: Medium</p>
    <div style="margin: 1%">Barbecue chicken, sweet corn and extra cheese.</div>
        
        
        
        <!--    <div class="quantity buttons_added">
	<input type="button" value="-" class="minus"><input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
        </div>-->
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=499&pizza_type=Non+veg&pizza_name=Cheesy+Chicken+Delight'" value="Add to cart" style="margin-right: 5%">
       
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=499&pizza_type=Non+veg&pizza_name=Cheesy+Chicken+Delight'" value="Order now">
         </span>
        
    
       
    <span class="column" style="margin-left: 2.5%">
     <img src="Images/NV/nvpizz2.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 699</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Mutton N Jalapenos</b></p>
        <p>Size: Large</p>
    <div style="margin: 1%">Delicious Mutton with the topping of Jalepeno.</div>
        
       
        
        <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=699&pizza_type=Non+veg&pizza_name=Mutton+N+Jalapenos'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=699&pizza_type=Non+veg&pizza_name=Mutton+N+Jalapenos'" value="Order now">
             </span>
    
    
     <br><span class="column" style="margin-left: 2.5%">
     <img src="Images/NV/nvpizza3.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 549</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Turkey N Mushroom</b></p>
    <p>Size: Medium</p>
    <div style="margin: 1%;">Classic cobination of Turkey and mushroom with onion and cheese.</div>
    
    

        <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=549&pizza_type=Non+veg&pizza_name=Turkey+N+Mushroom'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=549&pizza_type=Non+veg&pizza_name=Turkey+N+Mushroom'" value="Order now">
             </span>
    
        <span class="column" style="margin-left: 2.5%">
    <img src="Images/NV/nvpizza4.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 649</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Capsicum N Fish</b></p>
        <p>Size: Large</p>
    <div style="margin: 1%">Pizza loaded with fish, capsicum and spicy red pepper.</div>
            
            
    
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=649&pizza_type=Non+veg&pizza_name=Capsicum+N+Fish'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=649&pizza_type=Non+veg&pizza_name=Capsicum+N+Fish'" value="Order now">
         </span>
    
    <span class="column" style="margin-left: 2.5%">
    <img src="Images/NV/nvpizza5.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 699</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Seafood Marinara</b></p>
        <p>Size: Large</p>
    <div style="margin: 1%; height: 60px; font-size: 17px">Delightful combination of Marinara sauce and Moziralla sauce with Tune Fish.</div>
        
    
    
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=699&pizza_type=Non+veg&pizza_name=Seafood+Marinara'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=699&pizza_type=Non+veg&pizza_name=Seafood+Marinara'" value="Order now">
         </span>
        
     <span class="column" style="margin-left: 2.5%">
    <img src="Images/NV/nvpizza6.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 499</b></span></p>
         
    <p style="color: white"><b style="font-size: 20px;">Tuna N Tomato</b></p>
         <p>Size: Medium</p>
    <div style="margin: 1%">Pizza with the toppings of tomato and loaded with Tuna Fish.</div>
         
         
    
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=499&pizza_type=Non+veg&pizza_name=Tuna+N+Tomato'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=499&pizza_type=Non+veg&pizza_name=Tuna+N+Tomato'" value="Order now">
         </span>
    
     <span class="column" style="margin-left: 2.5%">
    <img src="Images/NV/nvpizza7.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 599</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Peri Peri Chicken Garlic</b></p>
         <p>Size: Large</p>
    <div style="margin: 1%">Perfect trio of barbecue chicken, peri peri and garlic.</div>
         
         
    
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=599&pizza_type=Non+veg&pizza_name=Peri+Peri+Chicken+Garlic'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=599&pizza_type=Non+veg&pizza_name=Peri+Peri+Chicken+Garlic'" value="Order now">
         </span>
    
     <span class="column" style="margin-left: 2.5%">
    <img src="Images/NV/nvpizza8.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 699</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Garlic Chilli Prawn Pizza</b></p>
         <p>Size: Medium</p>
    <div style="margin: 1%">Prawn pizza with toppings of spicy red chilli and garlic flavour.</div>
         
        
    
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=699&pizza_type=Non+veg&pizza_name=Garlic+Chilli+Prawn+Pizza'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=699&pizza_type=Non+veg&pizza_name=Garlic+Chilli+Prawn+Pizza'" value="Order now">
         </span>
    
     <span class="column" style="margin-left: 2.5%">
    <img src="Images/NV/nvpizza9.jpg" width="200" height="100"
         style="width:100">
    <p class="price"><span style="color: white"><b style="font-size: 2vw">&#8377; 599</b></span></p>
    <p style="color: white"><b style="font-size: 20px;">Chicken Barbecue N Onion</b></p>
         <p>Size: Large</p>
    <div style="margin: 1%">Classic taste with the barbecue chicken topped by onion.</div>
         

    
       <input type="button" class="floated" id="slide_addtocart_button" onclick="window.location.href='addcart.jsp?pizza_cost=599&pizza_type=Non+veg&pizza_name=Chicken+Barbecue+N+Onion'" value="Add to cart" style="margin-right: 5%">
        <input type="button" class="floated" id="slide_ordernow_button" onclick="window.location.href='placeord.jsp?pizza_cost=599&pizza_type=Non+veg&pizza_name=Chicken+Barbecue+N+Onion'" value="Order now">
         </span>
    
    
    
    
    
    
        </span>
        
            
</span>
    
    

    
</body>
</html>
