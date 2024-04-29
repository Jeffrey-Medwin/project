package com.quiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quiz.model.Encrypt;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("static-access")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName;
		String passswod;
		
		userName = request.getParameter("userName");
		passswod = request.getParameter("password");
			
		Encrypt encrypt = new Encrypt();
		
		if (!(encrypt.checkProperty(userName, passswod))) {
			response.getWriter().print("wrong details");
		} else {
			response.sendRedirect("portal.jsp");
		}  
	}

}