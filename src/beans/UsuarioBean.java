package beans;

public class UsuarioBean {
	private String nomeUsu, emailUsu, senhaUsu, confSenha, timeC;
	private int idUsuario;

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNomeUsu() {
		return nomeUsu;
	}

	public void setNomeUsu(String nomeUsu) {
		this.nomeUsu = nomeUsu;
	}

	public String getEmailUsu() {
		return emailUsu;
	}

	public void setEmailUsu(String emailUsu) {
		this.emailUsu = emailUsu;
	}

	public String getSenhaUsu() {
		return senhaUsu;
	}

	public void setSenhaUsu(String senhaUsu) {
		this.senhaUsu = senhaUsu;
	}

	public String getConfSenha() {
		return confSenha;
	}

	public void setConfSenha(String confSenha) {
		this.confSenha = confSenha;
	}

	public String getTimeC() {
		return timeC;
	}

	public void setTimeC(String timeC) {
		this.timeC = timeC;
	} 
}
