package com.quiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quiz.model.Employee;
import com.quiz.dao.UserDAO;



/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//	private EmployeeDao employeeDao;
	
	public void init()
	{
//		employeeDao =new EmployeeDao();	
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String educationalQualification = request.getParameter("education");
		String dateOfBirth = request.getParameter("dateOfBirth");
		String number = request.getParameter("mobileNumber");
		String alternativeNumber = request.getParameter("alternateNumber");
		String emailId = request.getParameter("mailId");
		String alternativeEmailId = request.getParameter("alternateMailId");
		String experience = request.getParameter("experience");
		String employer = request.getParameter("employer");
		String  currentCTC = request.getParameter("currentCTC");
		String expectedCTC = request.getParameter("expectedCTC");
		String dayToJoin = request.getParameter("dayJoin");
		String referedBy = request.getParameter("resource");
		
		Employee employee=new Employee();
		
		employee.setName(name);
		employee.setEducationalQualification(educationalQualification);
		employee.setDateOfBirth(dateOfBirth);
		employee.setNumber(number);
		employee.setAlternativeNumber(alternativeNumber);
		employee.setEmailId(emailId);
		employee.setAlternativeEmailId(alternativeEmailId);
		employee.setExperience(experience);
		employee.setCurrentCTC(currentCTC);
		employee.setEmployer(employer);
		employee.setExpectedCTC(expectedCTC);
		employee.setDayToJoin(dayToJoin);
		employee.setReferedBy(referedBy);
		
		UserDAO userDao =new UserDAO();
		try {
			userDao.insertData(employee);		
		}
		catch(Exception e){
			e.printStackTrace();
		}			
	}
}
