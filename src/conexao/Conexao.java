package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	//M�todo de conex�o
	public static Connection obterConexao() {
		
		//Objeto Connection
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost/trabfute","root", "");
		}catch (Exception erro) {
			System.out.println("Falha ao conectar "+erro.getMessage());
		}
		return con;
		
	}
	
}
