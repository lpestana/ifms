package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FactoryConnection {
  public static Connection getConnection() {
  	  //String url = "jdbc:postgresql://localhost/lpIII2021a?user=postgres&password=postgres";
	  String url = "jdbc:postgresql://localhost/2021_desenvolvimento?user=postgres&password=postgres";
	  
	  Connection conexao = null;
  	  try {
  		    Class.forName("org.postgresql.Driver");	
			conexao = DriverManager.getConnection(url);
	  } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
  	  } catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  	  return conexao;
  }
}
