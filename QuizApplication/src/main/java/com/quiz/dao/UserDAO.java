/**
 * 
 */
package com.quiz.dao;

import com.quiz.model.Employee;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class UserDAO {	
	Properties DAOproperties = new Properties();
	File file = new File("D://outlier-mini-project/QuizApplication/src/main/webapp/dao.properties");
	FileInputStream fileInput;
	private String url;
	private String userName;
	private String password;
	
	private static final String INSERT_USER_SQL = "INSERT INTO USER_DETAIL (name, education, date_of_birth, phone, alternative_phone, "
			+ "mail, alternative_mail, year_of_exp, current_employe, current_ctc, expected_ctc,"
			+ "days_required, refered_by) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
	
	
	public Connection getConnection() {
		Connection connection = null;
		try {
			fileInput = new FileInputStream(file);
			DAOproperties.load(fileInput);
			
			url = DAOproperties.getProperty("url");
			userName = DAOproperties.getProperty("username");
			password = DAOproperties.getProperty("password");
			System.out.println(url);
			System.out.println(userName);
			System.out.println(password);
			
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(url, userName, password);
			System.out.println("got con");
			if (connection != null) {
				System.out.println("connected");
			} else {
				System.out.println("not Connected");
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	public String insertData(Employee employee) {
		Connection connection = getConnection();
		String insertResult = "Lines Affected ";
		try{
			PreparedStatement preparedStmt = connection.prepareStatement(INSERT_USER_SQL);
			preparedStmt.setString(1, employee.getName());
			preparedStmt.setString(2, employee.getEducationalQualification());
			preparedStmt.setString(3, employee.getDateOfBirth());
			preparedStmt.setString(4, employee.getNumber());
			preparedStmt.setString(5, employee.getAlternativeNumber());
			preparedStmt.setString(6, employee.getEmailId());
			preparedStmt.setString(7, employee.getAlternativeEmailId());
			preparedStmt.setString(8, employee.getExperience());
			preparedStmt.setString(9, employee.getEmployer());
			preparedStmt.setString(10, employee.getCurrentCTC());
			preparedStmt.setString(11, employee.getExpectedCTC());
			preparedStmt.setString(12, employee.getDayToJoin());
			preparedStmt.setString(13, employee.getReferedBy());
			
			insertResult += preparedStmt.executeUpdate();
			System.out.println(insertResult);
		} catch (SQLException e) {
			insertResult = "Data not entered";
			System.out.println(insertResult);
			System.out.println(insertResult + "\n");
			e.printStackTrace();
		}
		return insertResult;
	}
	
}