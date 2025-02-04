<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PET MANAGEMENT SYSTEM</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Add full-screen video background */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
            position: relative; /* Ensure that the background image and content can coexist */
        }

        .showcase {
            position: relative;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        /* Background image */
        body {
            background-image: url('https://images.unsplash.com/photo-1592194996308-7b43878e84a6'); /* Example background image URL */
            background-size: cover; /* Ensure the background image covers the entire page */
            background-position: center;
            background-repeat: no-repeat;
            z-index: 0;
        }

        video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ensures the video covers the entire area */
            z-index: -1; /* Places the video behind the content */
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay to enhance text visibility */
            z-index: 1;
        }

        .text {
            position: relative;
            z-index: 2;
            text-align: center;
            color: white;
            padding: 20px;
        }

        .social {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            list-style-type: none;
            padding: 0;
            display: flex;
            gap: 15px;
        }

        .social li {
            display: inline;
        }

        .social a {
            color: white;
            text-decoration: none;
            font-size: 20px;
            font-weight: bold;
        }

        .social a:hover {
            color: #1d72b8; /* Example hover color */
        }

        /* Navbar styles */
        .header {
            display: flex;
            justify-content: space-between; /* Aligns the logo and menu items on opposite sides */
            align-items: center; /* Ensures content is centered vertically */
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #4CAF50; /* Navbar background color (green) */
            color: white;
            padding: 10px 20px;
            z-index: 2;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }

        .menu {
            display: flex;
            gap: 15px; /* Space between menu items */
            flex-grow: 1; /* Ensures the menu items take up all available space */
            justify-content: center; /* Center align the menu items */
        }

        .menu a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 18px;
            padding: 10px;
            display: inline-block; /* Makes the anchor tags behave like block elements */
            border-radius: 5px; /* Optional: Adds rounded corners */
        }

        /* Custom background colors for specific links */
        .menu a.home {
            background-color: #f44336; /* Red for Home */
        }

        .menu a.explore {
            background-color: #ff9800; /* Orange for Explore */
        }

        .menu a.logout {
            background-color: #2196F3; /* Blue for Logout */
        }

        /* New background colors for About, References, and Contact links */
        .menu a.about {
            background-color: #8bc34a; /* Light Green for About */
        }

        .menu a.references {
            background-color: #9c27b0; /* Purple for References */
        }

        .menu a.contact {
            background-color: #009688; /* Teal for Contact */
        }

        /* Hover effect for links */
        .menu a:hover {
            color: white;
            opacity: 0.8;
        }

        /* Specific hover effects for the colored links */
        .menu a.home:hover {
            background-color: #d32f2f;
        }

        .menu a.explore:hover {
            background-color: #e65100;
        }

        .menu a.logout:hover {
            background-color: #1976D2;
        }

        /* Hover effects for About, References, and Contact links */
        .menu a.about:hover {
            background-color: #7cb342;
        }

        .menu a.references:hover {
            background-color: #7b1fa2;
        }

        .menu a.contact:hover {
            background-color: #00796b;
        }
    </style>
</head>
<body>
  <section class="showcase">
  <%@ include file="navbar.jsp" %>
    <!-- <header class="header">
        <a href="PetDetails" class="logo">PET WORLD</a>
        <div class="menu">
          <a href="#home" class="home">Home</a>
          <a href="about" class="about">About</a>
          <a href="#" class="explore">Explore</a>
          <a href="#" class="references">References</a>
          <a href="Contact" class="contact">Contact</a>
          <a href="/" class="logout">Logout</a>
        </div>
    </header> -->
    <video autoplay muted loop>
        <source src="images/puppy.mp4" type="video/mp4">
        
        Your browser does not support the video tag.
    </video>
    <div class="overlay"></div>
    <div class="text">
      <h2>Keep Loving Pets</h2> 
      <h3>A little love is all they need</h3>
      <p>Pet adoption is a heartwarming choice that not only brings joy to your life but also transforms the life of a deserving animal.</p>
      <a href="petstore">Available Pets</a>
      <a href="petsavailable">Pet store</a>
    </div>
    <ul class="social">
        <li><a href="https://www.facebook.com" target="_blank">Facebook</a></li>
        <li><a href="https://www.twitter.com" target="_blank">Twitter</a></li>
        <li><a href="https://www.instagram.com" target="_blank">Instagram</a></li>
    </ul>
  </section>
</body>
</html>
    