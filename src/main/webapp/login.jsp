<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #354c6e, #6772a5);
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(20, 35, 205, 0.9);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
            margin: 0 auto;
        }

        h1 {
            font-size: 28px;
            margin: 0 0 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 80%;
            padding: 8px;
            border: 1px solid #1837d0;
            border-radius: 5px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        input[type="submit"], .signup-button {
            width: 45%; /* Share the container equally */
            background-color: #354c6e;
            color: #abea17;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover, .signup-button:hover {
            background-color: #293c5a;
        }

        .error {
            color: red;
        }

        .signup-button {
            background-color: #007bff;
        }
    </style>
</head>
<body>
    
    <div class="container">
        
        <h1>Login</h1>
        <form id="loginForm" method="post" action="login-submit">
            <!--<video width="320" height="240" muted loop autoplay> 
                <source src="bird.mp4" type="video/mp4" >
                
              Your browser does not support the video tag.
              </video>-->
            
            <!-- <video class="video1" src="bird.mp4" muted loop autoplay></video> -->
            <div class="form-group">
                <label for="username">Gmail:</label>
                <input type="text" id="gmail" name="gmail" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="button-container">
                <button class="signup-button" type="submit">Login</button>
                <button class="signup-button" onclick="window.location.href='signup'">Sign Up</button>
            </div>

            <div class="error" id="error">${message}</div>
        </form>
    </div>

   
</body>
</html>