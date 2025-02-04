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
  <!-- <h1 class="pet">Pet Food Store</h1> -->
  <div class="main">
    <div class="allcards">
      <div class="card">

        <div >
          <img class="image" src="Images/dogfood1.jpeg" height="220">
        </div>
        <div class="title">
          Dog Food
        </div>
        <div class="des">
          <p class="price">Price: 5000 </p>
          <button class="btn">Description</button>
          <button class="btn" onclick="scrolldiv()">Get dog food</button>
        </div>
        <div class="pet-specs">
          <p><strong>Breed:</strong> Golden Retriever</p>
          <p><strong>Price:</strong> $5000</p>
          <p><strong>Height:</strong> 22-24 inches</p>
          <p><strong>Color:</strong> Various shades of golden</p>
          <!-- Add more pet specifications as needed -->
        </div>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/catfood.jpeg" height="220">
        </div>
        <div class="title">
          Cat food
        </div>
        <div class="des">
          <p class="price">Price: 6000 </p>
          <button class="btndes">Description</button>
          <button class="btn" onclick="scrolldiv()">Get cat food</button>
        </div>
        <p></p>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/fishfood.jpeg" height="220">
        </div>
        <div class="title">
           Fish Food
        </div>
        <div class="des">
          <p class="price">Price: 8000 </p>
          <button class="btndes">Description</button>
          <button class="btn" onclick="scrolldiv()">Get Fish food</button>
        </div>
        <p></p>
      </div>
      <div class="card">

        <div >
          <img class="image" src="Images/horsefood1.jpeg" height="220">
        </div>
        <div class="title">
          Horse food
        </div>
        <div class="des">
          <p class="price">Price: 4000</p>
          <button class="btndes">Description</button>
          <button class="btn" onclick="scrolldiv()">Get horse food</button>
        </div>
        <p></p>
      </div>
    <div class="card">
      <div>
        <img  class="image" src="Images/rabbitfood1.jpeg" height="220">
      </div>
      <div class="title">
       Rabbit Food
      </div>
      <div class="des">
        <p class="price">Price : 8000</p>
        <button class="btndes">Description</button>
        <button class="btn" onclick="scrolldiv()">Get Rabbit food</button>


      </div>

    </div>


    <div class="card">

      <div >
        <img class="image" src="Images/birdfood.jpg" height="220">
      </div>
      <div class="title">
        Bird Food
      </div>
      <div class="des">
        <p class="price">Price: 12000 </p>
        <button class="btndes">Description</button>
        <button class="btn" onclick="scrolldiv()">Get Birds food</button>
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