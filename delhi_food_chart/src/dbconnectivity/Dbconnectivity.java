package dbconnectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnectivity {
  
	   
       public  Connection  getConnectivity() throws ClassNotFoundException, SQLException
       {
    	   Connection con = null;   
    	   Class.forName("com.mysql.jdbc.Driver");
    	   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/delhi_food_chart", "root", "root");
   		 return con;
       }
       
}
