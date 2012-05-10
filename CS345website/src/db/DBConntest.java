package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConntest {
	    private static final String driver = "com.mysql.jdbc.Driver";
	    private static final String url = "jdbc:mysql://127.0.0.1/food?useUnicode=true&characterEncoding=utf-8";
	    private static final String user = "root"; 
	    private static final String password = "7268218"; 
	    
	    public static Connection getConnection() {
	        Connection conn = null;
	        try {
	            Class.forName(driver);
	            conn = DriverManager.getConnection(url, user, password);
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return conn;
	    }
	}




