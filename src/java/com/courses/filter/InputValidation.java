package com.courses.filter;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class InputValidation {

	public static boolean isCheckEmail(String email) {
		String regex = "^\\d{8}" + "@student\\.hcmute\\.edu\\.vn$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(email);

		System.out.println("Email: " + email);
		if (matcher.matches()) {
			return true;
		}
		return false;
	}

	public static boolean isCheckPassword(String password) {
		String regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(password);

		System.out.println("Password: "+ password);
		if (matcher.matches()) {
			return true;
		}
		return false;
	}
	
	public static boolean isCheckRole(String role) {
		ArrayList<String> arrStringRole = new ArrayList<String>();
		arrStringRole.add("student");
		arrStringRole.add("teacher");
		arrStringRole.add("admin");
		
		if (arrStringRole.indexOf(role) == -1) {
			return false;
		}
		return true;
	}

	public static void main(String[] args) {
		System.out.println(isCheckRole("student"));
		
	}
}
