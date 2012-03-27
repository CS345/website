package cs345.servlets;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DbFileUploader
 */
@WebServlet("/DbFileUploader")
public class DbFileUploader extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DbFileUploader() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//to get the content type information from JSP Request Header
		String contentType = request.getContentType();
		//here we are checking the content type is not equal to Null and as well as the passed data from mulitpart/form-data is greater than or equal to 0
		if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
			ServletContext context = this.getServletContext();
			String filePath = context.getInitParameter("file-upload");
						
			File infile = new File(filePath);
			Scanner s = new Scanner(infile);
			while(s.hasNext()){
				System.out.println(s.next());
			}
			
			/*
			DataInputStream in = new DataInputStream(request.getInputStream());
			
			ServletContext context = this.getServletContext();
			String filePath = context.getInitParameter("file-upload");
			
            FileOutputStream fout = new FileOutputStream(filePath);
            fout.write( ("Today is: " + new java.util.Date()).getBytes());
            fout.close();
*/		
			/*
			try
			{
				File f=new File("outFile.java");
				InputStream inputStream= new DataInputStream(request.getInputStream());
				OutputStream out=new FileOutputStream(f);
				byte buf[]=new byte[1024];
				int len;
				while((len=inputStream.read(buf))>0)
				out.write(buf,0,len);
				out.close();
				inputStream.close();
				System.out.println("\nFile is created...................................");
			}
			catch (IOException e){
				e.printStackTrace();
			}
*/
		}
	}
}

