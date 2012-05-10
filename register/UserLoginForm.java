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
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.security.*;

public class UserLoginForm extends HttpServlet {

	public UserLoginForm() {
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
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(password.getBytes(),0,password.length());
			String password_md5 = new BigInteger(1,md.digest()).toString(16);
			
			rs = sql.executeQuery("Select * FROM users WHERE " +
					" email='"+ request.getParameter("email")+"' and "+
					" password='"+ password_md5+"'");	
			rs.next();
			
			if (rs.getInt("status")!=0){
				request.getSession().setAttribute("isLogin", "true");
				request.getSession().setAttribute("email", request.getParameter("email"));
				out.println("hello, "+rs.getString("firstname"));
			}
			System.out.println("hello3 ");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}
}
