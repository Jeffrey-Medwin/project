package com.quiz.model;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Properties;
import java.util.stream.Collectors;

public class Encrypt {

	public static boolean checkProperty(String userName, String password) {
		String LOCATIONprop = "D://outlier-mini-project/QuizApplication/src/main/webapp/credentials.properties";
		File file = new File(LOCATIONprop);
		try {
			FileInputStream fileInput = new FileInputStream(file);
			Properties props = new Properties();
			props.load(fileInput);

			@SuppressWarnings("rawtypes")
			Enumeration enuKeys = props.keys();
			while (enuKeys.hasMoreElements()) {
				String propertyUserName = (String) enuKeys.nextElement();
				String encryptedPasssword = props.getProperty(propertyUserName);
				String decryptPassword;

				char[] encryptedPasswaryCharArray = encryptedPasssword.toCharArray();
				ArrayList<Character> decryptedPasswordList = new ArrayList<Character>();
				int key = 3;

				for (char c : encryptedPasswaryCharArray) {
					c -= key;
					decryptedPasswordList.add(c);
				}

				decryptPassword = decryptedPasswordList.stream().map(Object::toString).collect(Collectors.joining());
				
				if ((propertyUserName.equals(userName)) && (decryptPassword.equals(password))) {
					return true;
				}
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
}
