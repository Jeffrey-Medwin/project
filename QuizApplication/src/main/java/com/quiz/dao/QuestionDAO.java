package com.quiz.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class QuestionDAO {
	Properties propertiesDao = new Properties();
	File propertyFile = new File("D://outlier-mini-project/QuizApplication/src/main/webapp/dao.properties");
	FileInputStream fileInput;
	
	private String url;
	private String userName;
	private String password;
	
	private static String INSERT_QUESTION = "INSERT INTO QUESTION (question_code, subject, question_number, question, option_1,"
			+ "option_2, option_3, option_4, correct_answer) VALUES (?,?,?,?,?,?,?,?,?)";
	private static String SELECT_QUESTION = "";
	
	private Connection getConnection() {
		Connection connection = null;
		try {
			fileInput = new FileInputStream(propertyFile);
			propertiesDao.load(fileInput);
			url = propertiesDao.getProperty("url");
			userName = propertiesDao.getProperty("userName");
			password = propertiesDao.getProperty("password");
			
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(url, userName, password);
			
			if (connection == null) {
				System.out.println("Connection not done");
			} else {
				System.out.println("connection done");
			}
			
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
//	public void inserQuestion(QuestionData questionData) {
//		Connection connection = getConnection();
//		PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUESTION);
//		preparedStatement.setInt(1, questionData.code);
//		preparedStatement.setString(2, questionData.subject);
//		preparedStatement.setInt(3, questionData.questionNumber);
//		preparedStatement.setString(4, questionData.question);
//		preparedStatement.setString(5, questionData.option1);
//		preparedStatement.setString(6, questionData.option2);
//		preparedStatement.setString(7, questionData.option3);
//		preparedStatement.setString(8, questionData.option4);
//		preparedStatement.setString(9, questionData.correctAnswer);
//	}
}


