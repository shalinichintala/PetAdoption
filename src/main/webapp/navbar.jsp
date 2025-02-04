<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
/* Navbar styles */
        .header {
            display: flex;
            justify-content: space-between; /* Aligns the logo and menu items on opposite sides */
            align-items: center; /* Ensures content is centered vertically */
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            background-color: transparent; /* Navbar background color (green) */
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
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header class="header">
        <a href="petDetails" class="logo">PET WORLD</a>
        <div class="menu">
          <a href="petDetails" class="home">Home</a>
          <a href="about" class="about">About</a>
          <a href="petsavailable" class="explore">Explore</a>
          <a href="petstore" class="references">References</a>
          <a href="Contact" class="contact">Contact</a>
          <a href="/" class="logout">Logout</a>
        </div>
    </header>
</body>
</html>