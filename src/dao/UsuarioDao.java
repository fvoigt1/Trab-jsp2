package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.UsuarioBean;
import conexao.Conexao;

public class UsuarioDao {

	public boolean cadastrar(String nomeUsu, String emailUsu, String senhaUsu, String timeC) {
		
		//Validação
		boolean valida = false;
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		//Tentativa
		try {
			String sql = "INSERT INTO usuarios (nomeUsu,emailUsu,senhaUsu,timeC) VALUES (?,?,?,?)";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, nomeUsu);
			pstmt.setString(2, emailUsu);
			pstmt.setString(3, senhaUsu);
			pstmt.setString(4, timeC);
			pstmt.execute();
			
			pstmt.close();
			conexao.close();
			
			valida = true;
		}catch (Exception erro) {
			System.out.println("Falha ao cadastrar "+erro.getMessage());
		}
		return valida;
	}
	

public int validarLogin (String nomeUsu, String senha) {
	//Contador
	int contador = 0;
	
	//Obter conexão
	Connection conexao = Conexao.obterConexao();
	
	//Tentativa
	try {
		String sql = "SELECT COUNT(*) FROM usuarios WHERE nomeUsu=? AND senhaUsu=?";
		
		PreparedStatement pstmt = conexao.prepareStatement(sql);
		
		pstmt.setString(1, nomeUsu);
		pstmt.setString(2, senha);
		
		ResultSet rs = pstmt.executeQuery();
		
		rs.last();
		contador = rs.getInt(1);
	}catch (Exception erro) {
		System.out.println("Falha ao validar usuário "+erro.getMessage());
	}
	
	return contador;
	}


public UsuarioBean obterDados(String nomeUsu, String senha) {
	
	//Objeto UsuarioBean
	UsuarioBean usuarioBean = new UsuarioBean();
	
	//Conexão
	Connection conexao = Conexao.obterConexao();
	
	//Tentativa
	try {
		
		String sql = "SELECT * FROM usuarios WHERE nomeUsu=? AND senhaUsu=?";
		
		PreparedStatement pstmt = conexao.prepareStatement(sql);
		pstmt.setString(1, nomeUsu);
		pstmt.setString(2, senha);
		
		ResultSet rs = pstmt.executeQuery();
		
		rs.last();
		usuarioBean.setIdUsuario(rs.getInt(1));
		usuarioBean.setNomeUsu(rs.getString(2));
		usuarioBean.setEmailUsu(rs.getString(3));
		usuarioBean.setSenhaUsu(rs.getString(4));
		usuarioBean.setTimeC(rs.getString(5));
		
		
	}catch (Exception erro) {
		System.out.println("Falha ao obter os dados "+erro.getMessage());
	}
	return usuarioBean;
}

}
