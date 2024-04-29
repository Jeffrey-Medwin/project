/**
 * 
 */
package com.quiz.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.quiz.model.Employee;

public class UserDAO {	
	Properties DAOproperties = new Properties();
	File file = new File("D://outlier-mini-project/QuizApplication/src/main/webapp/dao.properties");
	FileInputStream fileInput;
	
	private String url;
	private String userName;
	private String password;
	
	private static final String INSERT_USER = "INSERT INTO USER_DETAIL (name, education, date_of_birth, phone, alternative_phone, "
			+ "mail, alternative_mail, year_of_exp, current_employe, current_ctc, expected_ctc,"
			+ "days_required, refered_by) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);"; 
	private static final String DELETE_USER = "DELETE FROM USER_DETAIL WHERE mail=?;";
	private static final String UPDATE_USER_STATUS = "UPDATE USER_DETAIL SET status=? where mail=?";
	private static final String UPDATE_USER_SCORE = "UPDATE USER_DETAIL SET score=? where mail=?";
	private static final String SELECT_USER = "SELECT PK_user_id,name,subject,score,status FROM USER_DETAIL";
	
	/**
	 * 
	 * @return connection
	 */
	Connection connection = null;
	public Connection getConnection() {
		
		try {
			fileInput = new FileInputStream(file);
			DAOproperties.load(fileInput);
			
			url = DAOproperties.getProperty("url");
			userName = DAOproperties.getProperty("username");
			password = DAOproperties.getProperty("password");

//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(url, userName, password);
			if (connection != null) {
				System.out.println("connected");
			} else {
				System.out.println("not Connected");
			}
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	/**
	 * 
	 * @param employee
	 * @return insertResult
	 */
	public String insertData(Employee employee) {
		Connection connection = getConnection();
		String insertResult = "Lines Affected ";
		try{
			PreparedStatement preparedStmt = connection.prepareStatement(INSERT_USER);
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
			
			preparedStmt.close();
			connection.close();
		} catch (SQLException e) {
			insertResult = "Data not entered";
			System.out.println(insertResult);
			System.out.println(insertResult + "\n");
			e.printStackTrace();
		}
		return insertResult;
	}
	
	public boolean deleteData (String mail) {
		boolean rowDeleted = false;
		try {
			Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER);
			preparedStatement.setString(1, mail);
			rowDeleted = preparedStatement.executeUpdate() > 0;
			preparedStatement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowDeleted;
	}
	
	private void updateStatus(String mail, String status) {
		Connection connection = getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER_STATUS);
			preparedStatement.setString(1, mail);
			preparedStatement.setString(2, status);
			preparedStatement.executeUpdate();
			
			preparedStatement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void updateScore(String mail, String score) {
		Connection connection = getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER_STATUS);
			preparedStatement.setString(1, mail);
			preparedStatement.setString(2, score);
			preparedStatement.executeUpdate();
			
			preparedStatement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// "SELECT PK_user_id,name,subject,score,status FROM USER_DETAIL";
	
//	public List<Employee> selectUser() {
//		List<Employee> users = new ArrayList();
//		Connection connection = getConnection();
//		int id;
//		String name;
//		String subject;
//		String score;
//		String status;
//		
//		try {
//			Statement statement = connection.createStatement();
//			ResultSet resultSet = statement.executeQuery(SELECT_USER);
//			while (resultSet.next()) {
//				id = resultSet.getInt("PK_user_id");
//				name = resultSet.getString("name");
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return User;
//	}

}