package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.JogadoresBean;
import conexao.Conexao;

public class JogadoresDao {
	
	public boolean cadastrar(String nomeJog, String timeAtu, String posiJog,  int numJog, int golsJog, int idadeJog, double pesoJog, double altJog) {
		//Validação
			boolean valida = false;
				
			//Conexão
			Connection conexao = Conexao.obterConexao();
			//Tentativa
			try {
				String sql = "INSERT INTO jogadores (nomeJogador,timeAtu,posiJog,numJog,golsJog,idadeJog,pesoJog,altJog) VALUES (?,?,?,?,?,?,?,?)";
				
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setString(1, nomeJog);
				pstmt.setString(2, timeAtu);
				pstmt.setString(3, posiJog);
				pstmt.setInt(4, numJog);
				pstmt.setInt(5, golsJog);
				pstmt.setInt(6, idadeJog);
				pstmt.setDouble(7, pesoJog);
				pstmt.setDouble(8, altJog);
				pstmt.execute();
					
				pstmt.close();
				conexao.close();
					
				valida = true;
			}catch (Exception erro) {
				System.out.println("Falha ao cadastrar "+erro.getMessage());
			}
			return valida;
	}
	
public String selecionar() {
		
		//Estrutura
		String estrutura = "<table class='tabelaJog'>";
				estrutura += "<tr>";
				estrutura += "<td>Id</td>";
				estrutura += "<td>Nome</td>";
				estrutura += "<td>Time Atual</td>";
				estrutura += "<td>Posição</td>";
				estrutura += "<td>Nº Camisa</td>";
				estrutura += "<td>Gols</td>";
				estrutura += "<td>Idade</td>";
				estrutura += "<td>Peso</td>";
				estrutura += "<td>Altura</td>";
				estrutura += "<td>Excluir</td>";
				estrutura += "<td>Alterar</td>";
			estrutura += "</tr>";
			
			
			//Conexão
			Connection conexao = Conexao.obterConexao();
			
			//Tentativa
			try {
				String sql = "SELECT * FROM  jogadores";
				
				Statement stmt = conexao.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
			
				while(rs.next()) {
					estrutura += "<td>"+rs.getInt(1)+"</td>";
					estrutura += "<td>"+rs.getString(2)+"</td>";
					estrutura += "<td>"+rs.getString(3)+"</td>";
					estrutura += "<td>"+rs.getString(4)+"</td>";
					estrutura += "<td>"+rs.getInt(5)+"</td>";
					estrutura += "<td>"+rs.getInt(6)+"</td>";
					estrutura += "<td>"+rs.getInt(7)+"</td>";
					estrutura += "<td>"+rs.getDouble(8)+"</td>";
					estrutura += "<td>"+rs.getDouble(9)+"</td>";
					estrutura += "<td><a href='admin.jsp?idJog="+rs.getInt(1)+"'>Alterar</a></td>";
					estrutura += "<td><a href='requisicoes/excluirJog.jsp?idJog="+rs.getInt(1)+"'>Excluir</a></td>";
				estrutura += "</tr>";
				}
			
				stmt.close();
				conexao.close();
				
			}catch(Exception e) {}
			
			//Finalizar estrutura
			estrutura += "</table>";
			
			//Retorno
			return estrutura;		
	}
public String selecionarFlu() {
	
	//Estrutura
	String estrutura = "<table class='jogos2'>";
			estrutura += "<tr class='verdeescuro'>";
			estrutura += "<td>Nome</td>";
			estrutura += "<td>Info</td>";
		estrutura += "</tr>";
		
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			String sql = "SELECT * FROM  jogadores WHERE timeAtu='Fluminense'";
			
			
			Statement stmt = conexao.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		
			while(rs.next()) {
				estrutura += "<td>"+rs.getString(2)+"</td>";
				estrutura += "<td><a href='fluminense.jsp?idJog="+rs.getInt(1)+"'>Info</a></td>";
			estrutura += "</tr>";
			}
		
			stmt.close();
			conexao.close();
			
		}catch(Exception e) {}
		
		//Finalizar estrutura
		estrutura += "</table>";
		
		//Retorno
		return estrutura;		
}
public String selecionarFla() {
	
	//Estrutura
	String estrutura = "<table class='jogFla'>";
			estrutura += "<tr class='verdeescuro'>";
			estrutura += "<td>Nome</td>";
			estrutura += "<td>Info</td>";
		estrutura += "</tr>";
		
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			String sql = "SELECT * FROM  jogadores WHERE timeAtu='Flamengo'";
			
			
			Statement stmt = conexao.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		
			while(rs.next()) {
				estrutura += "<td>"+rs.getString(2)+"</td>";
				estrutura += "<td><a href='fluminense.jsp?idJog="+rs.getInt(1)+"'>Info</a></td>";
			estrutura += "</tr>";
			}
		
			stmt.close();
			conexao.close();
			
		}catch(Exception e) {}
		
		//Finalizar estrutura
		estrutura += "</table>";
		
		//Retorno
		return estrutura;		
}
	//Excluir
	public boolean excluir(int idJog) {
		
		//Valida
		boolean valida = false;
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			String sql = "DELETE FROM jogadores WHERE idJog = ?";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setInt(1, idJog);
			pstmt.execute();
			
			valida = true;
			
			pstmt.close();
			conexao.close();
			
		}catch(Exception erro) {}
		
		//Retorno
		return valida;
		}
	
	//Obter dados
		public JogadoresBean obterDados(int idJog) {
			
			//Objeto ProdutoBean
			JogadoresBean obj = new JogadoresBean();
			
			//Conexão
			Connection conexao = Conexao.obterConexao();
			
			
			//Tentativa
			try {
				String sql = "SELECT * FROM jogadores WHERE idJog = ?";
				
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setInt(1, idJog);
				
				ResultSet rs = pstmt.executeQuery();
				rs.last();
				
				obj.setIdJog(rs.getInt(1));
				obj.setNomeJog(rs.getString(2));
				obj.setTimeAtu(rs.getString(3));
				obj.setPosiJog(rs.getString(4));
				obj.setNumJog(rs.getInt(5));
				obj.setGolsJog(rs.getInt(6));
				obj.setIdadeJog(rs.getInt(7));
				obj.setPesoJog(rs.getDouble(8));
				obj.setAltJog(rs.getDouble(9));
				
				pstmt.close();
				conexao.close();
				
			}catch(Exception erro) {}
			
			//Retorno
			return obj;
		}


	public boolean alterar(JogadoresBean jb) {
		
		//Valida
		boolean valida = false;
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentiva
		try {
			String sql = "UPDATE jogadores SET nomeJogador = ?,timeAtu = ?,posiJog = ?,numJog = ?,golsJog = ?,idadeJog = ?,pesoJog = ?,altJog = ? WHERE idJog = ?";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, jb.getNomeJog());
			pstmt.setString(2, jb.getTimeAtu());
			pstmt.setString(3, jb.getPosiJog());
			pstmt.setInt(4, jb.getNumJog());
			pstmt.setInt(5, jb.getGolsJog());
			pstmt.setInt(6, jb.getIdadeJog());
			pstmt.setDouble(7, jb.getPesoJog());
			pstmt.setDouble(8, jb.getAltJog());
			pstmt.setInt(9, jb.getIdJog());
			pstmt.execute();
			
			valida = true;
			
			pstmt.close();
			conexao.close();
		}catch (Exception erro) {
			System.out.println("Falha ao cadastrar "+erro.getMessage());
		}
		return valida;
		
	}
}
