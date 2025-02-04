<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Welcome to PetStore</title>
    <link rel="stylesheet" href="">
    <style>
        body {
            background-image: url('dog_cutie.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }
        .banner {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Adjust as needed to center vertically */
        }
        h1 {
            color: white;
            text-align: center;
            font-size: 4em;
        }
        h2 {
            text-align: center;
            color: white;
            font-size: 2em;
        }
        .button-container {
            text-align: center;
        }
        .button {
            background-color: rgb(0, 128, 255);
            color: white;
            padding: 10px 20px;
            font-size: 1.5em;
            border: none;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div class="banner">
        <div class="section">
            <h1>Feed your pet with love</h1>
            <h2>Come and get your loved pets </h2>
            <div class="button-container">
                <form action="/">
                    <button type="submit" class="button"><b>Welcome</b></button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
