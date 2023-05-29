package com.courses.services.admin.user;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.courses.dao.AccountDAO;
import com.courses.dao.PersonDAO;
import com.courses.models.Account;
import com.courses.models.Person;
import com.courses.services.SuperService;
import com.courses.utils.helper.RandomUtils;

public class AccountService extends SuperService {

	PersonDAO personDAO = null;
	AccountDAO accountDAO = null;
	private String hashSHA256(String password) {
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(password.getBytes(StandardCharsets.UTF_8));
			StringBuilder hexString = new StringBuilder();
			for (byte b : hash) {
				String hex = Integer.toHexString(0xff & b);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			return hexString.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}

	public AccountService(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
		this.personDAO = new PersonDAO();
		this.accountDAO = new AccountDAO();
	}
	
	public AccountService() {}

	public void handlePostAccount() throws ServletException, IOException {
		String type = this.request.getParameter("type");
		String pageUrl = this.request.getContextPath() + "/admin/users/?type=" + type;
		try {
			// Get Params
			String personId = this.request.getParameter("personId");
			String username = this.request.getParameter("username");
			String password = hashSHA256(this.request.getParameter("password"));
			String desc = this.request.getParameter("description");
			// Get person
			Person person = this.personDAO.find(personId);
			// get account of person
			Account account = this.accountDAO.findByPerson(person);
			if (account != null) {
				System.out.println(account.getUsername());
			}
			boolean isCreate = false;

			// Check is exist
			if (account == null) {
				isCreate = true;
				// Create new Account => person
				account = new Account();
				account.setAccountId("AC" + RandomUtils.randomId());
				account.setUsername(username);
				account.setPerson(person);
			}
			account.setPassword(password);
			account.setDescription(desc);
			System.out.println(account.getUsername());

			// Nếu chưa có tài khoản thì sẽ cho tạo tài khoản, còn có rồi thì sẽ cho sửa
			if (isCreate) {
				this.accountDAO.create(account);
			} else {
				this.accountDAO.update(account);
			}

		} catch (Exception e) {
			pageUrl = "/pages/500.jsp";
			this.request.getRequestDispatcher(pageUrl).forward(request, response);
			return;
		}
		this.response.sendRedirect(pageUrl);
	}
}
