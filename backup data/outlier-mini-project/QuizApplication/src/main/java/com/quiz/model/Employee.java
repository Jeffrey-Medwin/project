package com.quiz.model;


/**
 * JavaBean class used in jsp action tags.
 * @author Sanjay Karthick S
 */
public class Employee {
	    
	    private String name="";
	    private String educationalQualification="";
	    private String dateOfBirth="";
	    private String number="";
	    private String alternativeNumber="";
	    private String emailId="";
	    private String alternativeEmailId="";
	    private String experience="";
	    private String employer="";
	    private String currentCTC="";
	    private String expectedCTC="";
	    private String dayToJoin="";
	    private String referedBy="";
	    
	    //constructor
	    public Employee()
	    {
	    	
	    }
		public Employee(String name, String educationalQualification, String dateOfBirth, String number,
				String alternativeNumber, String emailId, String alternativeEmailId, String experience,
				String employer, String currentCTC, String expectedCTC, String dayToJoin, String referedBy) 
		{
			super();
			this.name = name;
			this.educationalQualification = educationalQualification;
			this.dateOfBirth = dateOfBirth;
			this.number = number;
			this.alternativeNumber = alternativeNumber;
			this.emailId = emailId;
			this.alternativeEmailId = alternativeEmailId;
			this.experience = experience;
			this.employer = employer;
			this.currentCTC = currentCTC;
			this.expectedCTC = expectedCTC;
			this.dayToJoin = dayToJoin;
			this.referedBy = referedBy;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getEducationalQualification() {
			return educationalQualification;
		}

		public void setEducationalQualification(String educationalQualification) {
			this.educationalQualification = educationalQualification;
		}

		public String getDateOfBirth() {
			return dateOfBirth;
		}

		public void setDateOfBirth(String dateOfBirth) {
			this.dateOfBirth = dateOfBirth;
		}

		public String getNumber() {
			return number;
		}

		public void setNumber(String number) {
			this.number = number;
		}

		public String getAlternativeNumber() {
			return alternativeNumber;
		}

		public void setAlternativeNumber(String alternativeNumber) {
			this.alternativeNumber = alternativeNumber;
		}

		public String getEmailId() {
			return emailId;
		}

		public void setEmailId(String emailId) {
			this.emailId = emailId;
		}

		public String getAlternativeEmailId() {
			return alternativeEmailId;
		}

		public void setAlternativeEmailId(String alternativeEmailId) {
			this.alternativeEmailId = alternativeEmailId;
		}

		public String getExperience() {
			return experience;
		}

		public void setExperience(String experience) {
			this.experience = experience;
		}

		public String getEmployer() {
			return employer;
		}

		public void setEmployer(String Employer) {
			this.employer = Employer;
		}

		public String getCurrentCTC() {
			return currentCTC;
		}

		public void setCurrentCTC(String currentCTC) {
			this.currentCTC = currentCTC;
		}

		public String getExpectedCTC() {
			return expectedCTC;
		}

		public void setExpectedCTC(String expectedCTC) {
			this.expectedCTC = expectedCTC;
		}

		public String getDayToJoin() {
			return dayToJoin;
		}

		public void setDayToJoin(String dayToJoin) {
			this.dayToJoin = dayToJoin;
		}

		public String getReferedBy() {
			return referedBy;
		}

		public void setReferedBy(String referedBy) {
			this.referedBy = referedBy;
		}
		
		
}
