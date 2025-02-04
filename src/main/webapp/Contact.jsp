<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>pet adoption</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Nunito:ital,wght@1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@1,400;1,500;1,600;1,700&display=swap');
    *{
      margin:0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }
    
    body{
      min-height: 100vh;
      background: url(dog.png) no-repeat;
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    
    .contact-section{
      width: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    
    .contact-info{
      color: black;
      max-width: 500px;
      line-height: 65px;
      padding-left: 50px;
      font-size: 18px;
    }
    .contact-info i{
      margin-right: 20px;
      font-size: 25px;
    }
    
    .contact-form{
      max-width: 700px;
      margin-right: 50px;
    }
    
    .contact-info, .contact-form{
      flex: 1;
    }
    
    .contact-form h2{
      color: black;
      text-align: center;
      font-size: 35px;
      text-transform: uppercase;
      margin-bottom: 30px;
    }
    
    .contact-form .text-box{
      background: #000;
      color: chartreuse;
      border: none;
      width: calc(50% - 10px);
      height: 50px;
      padding: 12px;
      font-size: 15px;
      border-radius: 5px;
      box-shadow: 0 1px 1px rgba(red, green, blue, alpha);
      margin-bottom: 20px;
      opacity: 0.9;
    }
    
    .contact-form .text-box:first-child{
      margin-right: 15px;
    }
    
    .contact-form textarea{
      background: #000;
      color: blue;
      border: none;
      width: 100%;
      padding: 12px;
      font-size: 15px;
      min-height: 200px;
      max-height: 400px;
      resize: vertical;
      border-radius: 5px;
      box-shadow: 0 1px 1px rgba(red, green, blue, alpha);
      margin-bottom: 20px;
      opacity: 0.9;
    }
    
    .contact-form .send-btn{
      float: right;
      background: #FFBA33;
      color: #000;
      border: none;
      width: 120px;
      height: 40px;
      font-size: 15px;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 2px;
      border-radius: 5px;
      cursor: pointer;
      transition: 0.3s;
      transition-property: background;
    }
    
    button{
     float: middle;
      background: #FFBA33;
      color: #000;
      border: none;
      width: 120px;
      height: 40px;
      font-size: 15px;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 2px;
      border-radius: 5px;
      cursor: pointer;
      transition: 0.3s;
      transition-property: background;
    }
    
    @media screen and (max-width:950px){
      .contact-section{
        flex-direction: column;
      }
      
      .contact-info, .contact-form{
        margin: 30px 50px;
      }
      
      .contact-form h2{
        font-size: 30px;
      }
      
      .contact-form .text-box{
        width: 100%;
      }
    }
    
    .alert-success{
      z-index: 1;
      background: rgb(0, 255, 64) ;
      font-size: 18px;
      padding: 20px 40px;
      min-width: 420px;
      position: fixed;
      right: 0;
      top: 10px;
      border-left: 8px solid #72E71A ;
      border-radius: 4px;
    }
    
    .alert-error{
      z-index: 1;
      background: #13CA90 ;
      font-size: 18px;
      padding: 20px 40px;
      min-width: 420px;
      position: fixed;
      right: 0;
      top: 10px;
      border-left: 8px solid #F4DC10 ;
      border-radius: 4px;
    }
  </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
  
  <!--<div class="alert-success">
    <span>Message Sent! Thank You for contacting us.</span>
  </div>
  
  <div class="alert-error">
    <span>Something went Wrong! Please try again.</span>
  </div>-->
  
  <div class="contact-section">
    <div class="contact-info">
      <div><i class="fa fa-map-marker"></i>Address, City, Country</div>
      <div><i class="fa fa-envelope"></i>contact@gmail.com</div>
      <div><i class="fa fa-phone"></i>91+9391051775</div>
      <div><i class="fa fa-clock-o"></i>Mon - Fri 8:00 AM to 5:00 PM</div></div>
    <div class="contact-form">
      <h2>Contact us</h2>
      <form class="contact" action="contact-submit" method="post">
        <input type="text" name="name" class="text-box" placeholder="Your Name" required>
        <input type="email" name="email" class="text-box" placeholder="Your Email" required>
        <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
        <input type="submit"  name="submit" class="send-btn" value="Send">
        <p> ${message} </p>
        <button href="petDetails">Home</button>
      </form>
    </div>
  </div>
</body>
</html>