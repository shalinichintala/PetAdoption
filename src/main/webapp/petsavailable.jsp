<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Pet Details</title>
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }
        body {
            font-family: Arial, sans-serif;
            background-image: linear-gradient(10deg, darkblue, white);
        }
        .main {
            margin: 2%;
            position: relative;
        }
        .card {
            width: 28%;
            display: inline-block;
            box-shadow: 2px 2px 40px rgb(23, 23, 23);
            border-radius: 5px;
            margin: 2%;
            overflow: hidden; /* Ensure content doesn't overflow */
        }
        .image {
            width: 100%;
            height: 200px; /* Set a fixed height for consistency */
            overflow: hidden;
        }
        .image img {
            width: 100%; /* Fill the width of the container */
            height: 100%; /* Fill the height of the container */
            object-fit: cover; /* Maintain aspect ratio and fill the container */
        }
        .title {
            text-align: center;
            padding: 10px;
        }
        h1 {
            font-size: 20px;
        }
        .des {
            padding: 3px;
            text-align: center;
            color: rgb(255, 255, 255);
            padding-top: 10px;
            border-bottom-right-radius: 5px;
            border-bottom-left-radius: 5px;
        }
        button {
            margin-top: 40px;
            margin-bottom: 10px;
            background-color: rgb(0, 0, 0);
            border: 1px solid black;
            border-radius: 5px;
            padding: 10px;
            color: white;
        }
        button:hover {
            background-color: white;
            color: black;
            transition: .5s;
            cursor: pointer;
        }
        nav {
            text-align: center;
            background-color: #0c4c52;
        }
        nav a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            color: #fff;
        }
        nav a:hover {
            background-color: #555;
        }
        .pet {
            text-align: center;
            color: rgb(19, 17, 17);
            font-weight: bolder;
            padding-top: 50px;
        }
        .logo {
            color: #fff;
            text-transform: uppercase;
            cursor: pointer;
            display: block;
            float: left;
            font-size: 2em;
            padding: 10px 20px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <br/>
    <br/>
<!--     <h1 align="center">Welcome to PetStore</h1>
 -->    <br>
    <div class="main">
        <div class="card">
            <div class="image">
                <img src="Images/petfood1.jpg" alt="Pet Food">
            </div>
            <div class="title"></div>
            <div class="des">
                <p>FOOD</p>
                <form action="food">
                    <button onclick="window.location.href='food'">Get Food</button>
                </form>
            </div>
        </div>
        <div class="card">
            <div class="image">
                <img src="Images/petmedicines1.jpg" alt="Pet Medicines">
            </div>
            <div class="title"></div>
            <div class="des">
                <p>MEDICINES</p>
                <form action="medicines">
                    <button onclick="window.location.href='medicines'">Get Medicines</button>
                </form>
            </div>
        </div>
        <div class="card">
            <div class="image">
                <img src="Images/petproducts1.jpg" alt="Pet Products">
            </div>
            <div class="title"></div>
            <div class="des">
                <p>PRODUCTS</p>
                <form action="product">
                    <button onclick="window.location.href='product'">Get Products</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
