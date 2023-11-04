package modelos;

public class Usuario {
	
	private int cod_usuario;
	private String nome;
	private String cpf;
	private String email;	
	private int cod_perfil;
	private String senha;
	
	
	public Usuario(int cod_usuario, String nome, String cpf, String email, int cod_perfil, String senha) {
		
		this.cod_usuario = cod_usuario;
		this.nome = nome;
		this.cpf = cpf;
		this.email = email;
		this.cod_perfil = cod_perfil;
		this.senha = senha;
		
	}
	public int getCod_usuario() {
		return cod_usuario;
	}
	public void setCod_usuario(int cod_usuario) {
		this.cod_usuario = cod_usuario;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getCod_perfil() {
		return cod_perfil;
	}
	public void setCod_perfil(int cod_perfil) {
		this.cod_perfil = cod_perfil;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	
	
}
