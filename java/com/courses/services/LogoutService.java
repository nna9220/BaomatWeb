package com.courses.services;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutService extends SuperService{
	
	public static String generateCSRFToken() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] tokenBytes = new byte[16]; 
        secureRandom.nextBytes(tokenBytes);
        return Base64.getUrlEncoder().withoutPadding().encodeToString(tokenBytes);
    }
	public LogoutService(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}
	
	public LogoutService () {}
	
	public void handleGetLogout() throws ServletException, IOException {
		// define url
		String csrfToken = generateCSRFToken(); // Hàm tạo mã thông báo CSRF
		request.getSession().setAttribute("csrfToken", csrfToken);
		String url = "/login";
		// destroy cookie
		Cookie userId = new Cookie("userIdCookie","");  
		userId.setPath("/");
        userId.setMaxAge(0);  
        response.addCookie(userId);  
        
        // destroy session
        HttpSession session = request.getSession(false);
        if (session != null) {
        	session.invalidate();
        }
        
        // forward to jsp file
		super.redirectToPage(request.getContextPath() + url);
	}
	
	public void handlePostLogout() throws ServletException, IOException{
		
	}

}
