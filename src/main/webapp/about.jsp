<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Pet Store</title>
    <style>
        body {
            background-image: url('cattt.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            margin: 20px;
        }

        h1 {
            text-align: center;
        }

        p {
            text-align: justify;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
    <div class="container">
        <h1>About Us</h1>
        <p>Welcome to our pet store! We are passionate about providing the best care for your pets and offering a wide range of high-quality products and services to meet their needs. With years of experience in the pet industry, we understand the unique bond between you and your furry, feathered, or scaly companions.</p>
        <p>At our pet store, you'll find a dedicated team of professionals who are always ready to assist you. We believe that every pet deserves the best, whether it's nutritious food, interactive toys, stylish accessories, or expert grooming services. We're here to make sure your pets live happy and healthy lives.</p>
        <p>Our mission is to create a welcoming and nurturing environment for pet owners and their beloved animals. We are committed to being a trusted partner in your pet's well-being, and we take pride in being a part of your pet's journey.</p>
        <button class="signup-button" onclick="window.location.href='petDetails'">Go Back</button>
    </div>
</body>
</html>
