package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.ContactModel;
import com.example.demo.model.User;
import com.example.demo.service.ContactService;
import com.example.demo.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ClientController {
	
	
	@Autowired
	public ContactService contactService;
	
	
	@Autowired
	public UserService userService; 
	
	@GetMapping("/")
	public ModelAndView loginRender() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	@GetMapping("/signup")
	public ModelAndView SignupRender() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SignUp");
		return mv;
	}
	
	@GetMapping("/home")
	public ModelAndView homeRender() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	
	@GetMapping("/about")
	public ModelAndView aboutRender() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	
	@GetMapping("/product")
	
	public ModelAndView productRender() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product");
		return mv;
	}
	
@GetMapping("/medicines")
	
	public ModelAndView referencesRender() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("medicines");
		return mv;
	}
@GetMapping("/Otherpets")

public ModelAndView otherpetsRender() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("Otherpets");
	return mv;
}

@GetMapping("/petDetails")

public ModelAndView detailsRender() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("PetDetails");
	return mv;
}

@GetMapping("/petsavailable")

public ModelAndView availableRender() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("petsavailable");
	return mv;
}

@GetMapping("/petstore")

public ModelAndView storeRender() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("petstore");
	return mv;
}

@GetMapping("/PetWalking")

public ModelAndView walkingRender() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("PetWalking");
	return mv;
}

@GetMapping("/Services")

public ModelAndView serviceRender() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("Services");
	return mv;
}


@GetMapping("/Contact")

public ModelAndView contactRender() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("Contact");
	return mv;
}
	

@GetMapping("/food")
public ModelAndView foodRender() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("food");
	return mv;
}



@PostMapping("/contact-submit")
public ModelAndView contactSubmit(HttpServletRequest request) {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("Contact");
	String msg = "";
	try {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		ContactModel cm = new ContactModel();
		cm.setName(name);
		cm.setEmail(email);
		cm.setMessage(message);
		
		msg = contactService.saveContact(cm);
		
	}catch(Exception e) {
		System.out.println(e.getMessage());
	}finally {
		
	}
	
	mv.addObject("message", msg);
	return mv;
	
	
}



@PostMapping("/save")
public ModelAndView loginSubmit(HttpServletRequest request) {
    ModelAndView mv = new ModelAndView();
    String msg = "";
    try {
        // Retrieve parameters from the request
        String uname = request.getParameter("username");
        String gmail = request.getParameter("gmail");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String state = request.getParameter("state");
        String zipCode = request.getParameter("zipCode");
        String gender = request.getParameter("gender");

        // Create and populate the User object
        User cm = new User();
        cm.setFullname(uname);
        cm.setGmail(gmail);
        cm.setPassword(password);
        cm.setAddress(address);
        cm.setState(state);
        cm.setZipCode(zipCode);
        cm.setGender(gender);

        // Save the User object using the service
        msg = userService.save(cm);
        if (msg.equals("Registration success")) {
            mv.addObject("message", msg);
            mv.setViewName("login");
        } else {
            mv.setViewName("signup");
            mv.addObject("message", msg);
        }
    } catch (Exception e) {
        System.out.println("Error: " + e.getMessage());
        mv.setViewName("error"); // Optionally redirect to an error page
        mv.addObject("message", "An error occurred while processing your request.");
    }

    mv.addObject("message", msg);
    return mv;
}

@PostMapping("/login-submit")
public ModelAndView login(HttpServletRequest request) {
	String gmail = request.getParameter("gmail");
	String password = request.getParameter("password");
    Optional<User> existingUser = userService.findByGmail(gmail,password);
    
    ModelAndView mv = new ModelAndView();
    
    

    if (existingUser.isPresent() && existingUser.get().getPassword().equals(password)) {
       // model.addAttribute("message", "Login successful!");
        mv.setViewName("PetDetails");
    } else {
        mv.setViewName("login");
        mv.addObject("message", "Invalid Credentials");
    }
    
    return mv;
}




	

}
