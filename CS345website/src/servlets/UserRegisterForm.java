package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;

import db.DBConntest;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class UserRegisterForm extends HttpServlet {

	public UserRegisterForm() {
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		java.sql.Statement sql;
		ResultSet rs;
		int rs1;
		Connection con = DBConntest.getConnection();
		try {
			sql = con.createStatement();
			
			String password = request.getParameter("password");
			String cpassword= request.getParameter("confirm_password");
			if(!password.equals(cpassword)){
				 JOptionPane.showMessageDialog( null,"password and confirm password are not the same!");
				 out.println("not success");
			}
			else{
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(password.getBytes(), 0, password.length());
			String password_md5 = new BigInteger(1, md.digest()).toString(16);

			String verifycode = String.valueOf(Math.random());
			md.update(verifycode.getBytes(), 0, verifycode.length());
			verifycode = new BigInteger(1, md.digest()).toString(16);

			String s = "insert into users (email, firstname, lastname, password,bucnumber, status, registerdate,verifycode) values  ("
					+ "'"
					+ request.getParameter("email")
					+ "',"
					+ "'"
					+ request.getParameter("first_name")
					+ "',"
					+ "'"
					+ request.getParameter("last_name")
					+ "',"
					+ "'"
					+ password_md5
					+ "',"
					+ "'"
					+ request.getParameter("bucs_num_input")
					+ "',"
					+ "'0',"
					+ "NOW()," + "'" + verifycode + "'" + ")";
			sql.execute(s);
			sendVerifyMail(request.getParameter("email"),
					"http://localhost:8080/guestjsfdemo/UserVerifyForm?code="
							+ verifycode);
			out.println("success");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			
		}
		
		out.flush();
		out.close();
		
	}

	public static void sendVerifyMail(String mailAddress, String url) {
		// TODO Auto-generated method stub
		// Recipient's email ID needs to be mentioned.
		String to = mailAddress;

		// Sender's email ID needs to be mentioned
		String from = "superand@126.com";

		// Assuming you are sending email from localhost
		String host = "localhost";

		// Get system properties
		Properties properties = new Properties();
		properties.setProperty("mail.password", "superman");
		properties.setProperty("mail.from", "superand@126.com");
		properties.setProperty("mail.host", "smtp.126.com");
		properties.setProperty("mail.smtp.auth", "true");
		MyAuthenticator myauth = new MyAuthenticator("superand@126.com",
				"superman");
		// Get the default Session object.
		Session session = Session.getDefaultInstance(properties, myauth);

		try {
			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(from));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(
					to));

			// Set Subject: header field
			message.setSubject("Activate Your account, piease.");

			// Now set the actual message
			message.setText("Open this URL " + url);

			// Send message
			Transport.send(message);
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}
	}

}

class MyAuthenticator extends javax.mail.Authenticator {
	private String strUser;
	private String strPwd;

	public MyAuthenticator(String user, String password) {
		this.strUser = user;
		this.strPwd = password;
	}

	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(strUser, strPwd);
	}
}