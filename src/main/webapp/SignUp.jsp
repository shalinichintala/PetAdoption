<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeLeaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <link rel="stylesheet" th:href="@{/css/styles.css}">
    <style>
		.container {
  width: 400px;
  margin: 0 auto;
  padding: 20px;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h2 {
  text-align: center;
}

.input-group {
  margin-bottom: 15px;
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type="radio"] {
  margin-right: 5px;
}

.btn {
  display: block;
  width: 100%;
  padding: 10px;
  background-color: #007BFF;
  color: #fff;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

.message {
  background-color: #dff0d8;
  color: #3c763d;
  padding: 10px;
  border: 1px solid #d6e9c6;
  border-radius: 3px;
  margin-bottom: 15px;
  text-align: center;
}

	</style>
</head>
<body>
    <div class="container">
        <h2>Registration</h2>
        
        <div th:if="${message != null}" class="message">
            Pet management
        </div>
          
        <form action="save" method="post" role="form" th:object="${user}">
			
            <div class="input-group">
                <label for="name">Name:</label>
                <input th:field="*{name}" type="text" id="name" name="username" placeholder="Enter your Name" required="required">
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input th:field="*{email}" type="text" placeholder="Enter your Email" name= "gmail" required="required">
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input th:field="*{password}" type="password" placeholder="Enter your password" name="password" required="required">
            </div>
            <div class="input-group">
                <label for="address">Address:</label>
                <input th:field="*{address}" type="text" id="address" name="address" placeholder="Enter your address" required="required">
            </div>
            <div class="input-group">
                <label for="state">State:</label>
                <input th:field="*{state}" type="text" id="state" name="state" placeholder="Enter your State" required="required">
            </div>
            <div class="input-group">
                <label for="zipCode">Zip Code:</label>
                <input th:field="*{zipCode}" type="text" id="zipCode" name="zipCode" placeholder="Enter your Zip Code" required="required">
            </div>
            <div class="input-group">
                <label for="gender">Gender:</label>
                <input type="radio" th:field="*{gender}" id="male" name="gender" value="Male"> Male
                <input type="radio" th:field="*{gender}" id="female" name="gender" value="Female"> Female
            </div>
            <button  type="submit" class="btn">Register</button>
             <!--<input type="submit" href="/" name="submit" class="send-btn" value="Send">
             <input type="submit" name="/" class="btn" value="Register" >
             -->
            <a href="/save" th:action="@{/}">Register</a>
            
        </form>
    </div>
</body>
</html>


