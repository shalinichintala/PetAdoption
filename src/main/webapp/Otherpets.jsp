<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>OtherPets</title>
  <script src="addtocart.js" async></script>
  <link rel="stylesheet" href="Otherpets.css">
  
  
</head>
<body>
<%@ include file="navbar1.jsp" %>
<br/>
<br/>
<!-- <h1 class="pet">Other Pets Available</h1>  -->
  <div class="main">
    <div class="allcards">
      <div class="card">

        <div >
          <img class="image" src="Images/dog1.jpg" height="220">
        </div>
        <div class="title">
          Chow-Chow
        </div>
        <div class="des">
          <!-- <p class="price">Price: 5000 </p> -->
          
          <button class="btn" onclick="scrolldiv()">Get this Pet</button>
        </div>
        <div class="pet-specs">
          <p><strong>Breed:</strong> Golden Retriever</p>
          <!-- <p><strong>Price:</strong> $5000</p> -->
          <p><strong>Height:</strong> 22-24 inches</p>
          <p><strong>Color:</strong> Various shades of golden</p>
          <!-- Add more pet specifications as needed -->
        </div>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/dogg.jpg" height="220">
        </div>
        <div class="title">
          Petland Florida
        </div>
        <div class="des">
          <!-- <p class="price">Price: 6000 </p> -->
          
          <button class="btn" onclick="scrolldiv()">Get this Pet</button>
        </div>
        <p></p>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/cattt.jpg" height="220">
        </div>
        <div class="title">
           Ragdoll
        </div>
        <div class="des">
          <!-- <p class="price">Price: 8000 </p> -->
         
          <button class="btn" onclick="scrolldiv()">Get this Pet</button>
        </div>
        <p></p>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/cattttt.jpg" height="220">
        </div>
        <div class="title">
          Persian
        </div>
        <div class="des">
         <!--  <p class="price">Price: 4000</p> -->
          <button class="btn" onclick="scrolldiv()">Get this Pet</button>
        </div>
        <p></p>
      </div>
    <div class="card">
      <div>
        <img  class="image" src="Images/goldfish.jpeg" height="220">
      </div>
      <div class="title">
       GoldFish 
      </div>
      <div class="des">
        <!-- <p class="price">Price : 8000</p> -->
     
        <button class="btn" onclick="scrolldiv()">Get this Pet</button>


      </div>

    </div>


    <div class="card">

      <div >
        <img class="image" src="Images/bluefish.jpeg" height="220">
      </div>
      <div class="title">
       BlueTag
      </div>
      <div class="des">
        <!-- <p class="price">Price: 12000 </p> -->
        
        <button class="btn" onclick="scrolldiv()">Get this Pet</button>
      </div>
      <p></p>
    </div>
    <div class="card">

      <div >
        <img class="image" src="Images/turtle.jpeg" height="220">
      </div>
      <div class="title">
        Group of Turtles
      </div>
      <div class="des">
        <!-- <p class="price">Price: 2100 </p> -->
       
        <button class="btn" onclick="scrolldiv()">Get this Pet</button>
      </div>
      <p></p>
    </div>
    <div class="card">

      <div >
        <img class="image" src="Images/turtles.jpeg" height="220">
      </div>
      <div class="title">
        Group of Turtles
      </div>
      <div class="des">
       <!--  <p class="price">Price: 2100 </p> -->
    
        <button class="btn" onclick="scrolldiv()">Get this Pet</button>
      </div>
      <p></p>
    </div>
    

    

    
    
    
    </div>


    <section class="cartheader" id="cart">
      <h2  class="carthe">CART</h2><br>
      <div class="headitems">
        <span >Item</span>
        <span >Adopted pets</span>
        <spam >Quantity</spam>
      </div>
        <div class="cartitems">
      
    </div>
      <div class="quant2">
       <!--  <strong ">Total : </strong>
        <span class="tot">0</span><br> -->
        <button class="btnpur">Adopt</button>
      </div>

    </section>

    <script> 
      function scrolldiv() { 
          var elem = document.getElementById("cart"); 
          elem.scrollIntoView(); 
      }
      
      
  </script> 

</body>

</html>