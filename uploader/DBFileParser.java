package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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


import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;


public class DBFileParser {

	String inText;
	Connection con;
	public DBFileParser(String in,Connection con){
		inText = in;
		this.con = con;
	}
	
	
	public void parse(){
		String[] array=inText.split("\r\n");
		for(int j=0;j<array.length;j++)
		{
			System.out.println(array[j]);
			String currLine=array[j];
			String[] outputline=currLine.split("\"");
			
				String result;
				{
					result="\""+outputline[1]+"\""+
					outputline[2]+"\""+
					outputline[7]+"\""+",";//upc, quantity, name,price
					String[] prices=outputline[8].split(",");
					result+=prices[1];
					System.out.println(result);
				}
				Statement sql;
				try {
					sql = con.createStatement();
					String sqlString="insert into products (UPC,quantity,name,price) values ("+result+")";
					sql.execute(sqlString);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}	
	}
	
	public void run(){
		parse();
		System.out.println("The parse has completed");
	}
}
