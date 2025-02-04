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
<%@ include file="navbar.jsp" %>
  <!-- <h1 class="pet">Medicine store</h1> -->
  <div class="main">
    <div class="allcards">
      <div class="card">

        <div >
          <img class="image" src="Images/dogmedicine.jpeg" height="220">
        </div>
        <div class="title">
          Dog medicine
        </div>
        <div class="des">
          <p class="price">Price: 5000 </p>
          <button class="btn">Description</button>
          <button class="btn" onclick="scrolldiv()">Get dog medicine</button>
        </div>
        <div class="pet-specs">
          <p><strong>Breed:</strong> Golden Retriever</p>
          <p><strong>Price:</strong> $50</p>
          <p><strong>Height:</strong> 22-24 inches</p>
          <p><strong>Color:</strong> Various shades of golden</p>
          <!-- Add more pet specifications as needed -->
        </div>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/catmedicine.jpg" height="220">
        </div>
        <div class="title">
          Cat medicine
        </div>
        <div class="des">
          <p class="price">Price: 60 </p>
          <button class="btndes">Description</button>
          <button class="btn" onclick="scrolldiv()">Get cat medicine</button>
        </div>
        <p></p>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/fishmedicine.jpeg" height="220">
        </div>
        <div class="title">
           Fish medicine
        </div>
        <div class="des">
          <p class="price">Price: 80</p>
          <button class="btndes">Description</button>
          <button class="btn" onclick="scrolldiv()">Get Fish medicine</button>
        </div>
        <p></p>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/horsemedicie.jpeg" height="220">
        </div>
        <div class="title">
          Horse medicine
        </div>
        <div class="des">
          <p class="price">Price: 40</p>
          <button class="btndes">Description</button>
          <button class="btn" onclick="scrolldiv()">Get horse medicine</button>
        </div>
        <p></p>
      </div>
    <div class="card">
      <div>
        <img  class="image" src="Images/rabbitmedicine.jpg" height="220">
      </div>
      <div class="title">
       Rabbit medicine
      </div>
      <div class="des">
        <p class="price">Price : 80</p>
        <button class="btndes">Description</button>
        <button class="btn" onclick="scrolldiv()">Get Rabbit medicine</button>


      </div>

    </div>


    <div class="card">

      <div >
        <img class="image" src="Images/birdmedicine.jpeg" height="220">
      </div>
      <div class="title">
        Bird medicine
      </div>
      <div class="des">
        <p class="price">Price: 120 </p>
        <button class="btndes">Description</button>
        <button class="btn" onclick="scrolldiv()">Get Birds medicine</button>
      </div>
      <p></p>
    </div>
    
    
    
    
    
    </div>


    <section class="cartheader" id="cart">
      <h2  class="carthe">CART</h2><br>
      <div class="headitems">
        <span>Item</span>
        <span>Price</span>
        <spam>Quantity</spam>
      </div>
        <div class="cartitems">
      
    </div>
      <div class="quant2">
        <strong ">Total : </strong>
        <span class="tot">0</span><br>
        <button class="btnpur">Purchase</button>
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