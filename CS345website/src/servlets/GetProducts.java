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
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class GetProducts extends HttpServlet {

	public GetProducts() {
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/xml");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		out.println("<response>");
		java.sql.Statement sql;
		ResultSet rs;
		int rs1;
		Connection con = DBConntest.getConnection();
		try {
			sql = con.createStatement();

			ArrayList ids = new ArrayList();
			ArrayList contents = new ArrayList();
			ArrayList contentTitles = new ArrayList();

			rs = sql.executeQuery("Select * FROM products");
			int bj = 0;
			while (rs.next()) {
				if (bj > 20) {
					break;
				}
				bj++;

				out.println("<product>");
				
				out.println("<name>" + rs.getString("name") + "</name>");
				out.println("<price>" + rs.getString("price") + "</price>");
				out.println("<quantity>" + rs.getString("quantity") + "</quantity>");
				out.println("<upc>"+rs.getString("upc")+"</upc>");
				out.println("</product>");
			}
			out.println("<count>" + bj + "</count>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("</response>");
		out.flush();
		out.close();
	}
}
