<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Fix</title>
    <style>
    .header {
    display: flex;
    justify-content: space-between; /* Aligns the logo and menu items on opposite sides */
    align-items: center; /* Ensures content is centered vertically */
    position: absolute;
    top: 5px; /* Adds space from the top of the page */
    left: 0;
    width: 100%;
    padding: 15px 20px; /* Adds padding around navbar content */
}
    
        .menu {
            display: flex;
            margin: 0 10px; /* Space between menu items */
            flex-grow: 1; /* Ensures the menu items take up all available space */
            justify-content: center; /* Align items to the right */
        }

        .menu a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 18px;
            padding: 10px;
            display: inline-block; /* Makes the anchor tags behave like block elements */
            border-radius: 10px; /* Optional: Adds rounded corners */
            margin: 0 10px;
        }

        /* Background colors for links */
        .logo{
        	 text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 18px;
            padding: 10px;
            display: inline-block; /* Makes the anchor tags behave like block elements */
            border-radius: 15px; /* Optional: Adds rounded corners */
            margin: 0 10px;
        }
        .menu a.home {
            background-color: #f44336; /* Red for Home */
        }

        .menu a.explore {
            background-color: #ff9800; /* Orange for Explore */
        }

        .menu a.references {
            background-color: #9c27b0; /* Purple for Cats */
        }

        .menu a.contact {
            background-color: #009688; /* Teal for Birds */
        }

        .menu a.sample {
            background-color: blue; /* Blue for Fish */
        }

        /* Hover effects for links */
        .menu a:hover {
            color: white;
            opacity: 0.8;
        }

        .menu a.home:hover {
            background-color: #d32f2f;
        }

        .menu a.explore:hover {
            background-color: #e65100;
        }

        .menu a.references:hover {
            background-color: #7b1fa2;
        }

        .menu a.contact:hover {
            background-color: #00796b;
        }

        .menu a.sample:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <header class="header">
        <a href="petDetails" class="logo">PET WORLD</a>
        <div class="menu">
            <a href="petDetails" class="home">Home</a>
            <a href="Otherpets" class="explore">Dogs</a>
            <a href="Otherpets" class="references">Cats</a>
            <a href="Otherpets" class="contact">Birds</a>
            <a href="Otherpets" class="sample">Fish</a>
        </div>
    </header>
</body>
</html>
