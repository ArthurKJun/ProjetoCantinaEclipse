package modelos;

public class Perfil {
	
	private int cod_perfil;
	private String nome_perfil;
	private String permissao;
	
	
	public int getCod_perfil() {
		return cod_perfil;
	}
	public void setCod_perfil(int cod_perfil) {
		this.cod_perfil = cod_perfil;
	}
	public String getNome_perfil() {
		return nome_perfil;
	}
	public void setNome_perfil(String nome_perfil) {
		this.nome_perfil = nome_perfil;
	}
	public String getPermissao() {
		return permissao;
	}
	public void setPermissao(String permissao) {
		this.permissao = permissao;
	}
	
	
	public Perfil(int cod_perfil, String nome_perfil, String permissao) {
		super();
		this.cod_perfil = cod_perfil;
		this.nome_perfil = nome_perfil;
		this.permissao = permissao;
	}
	
	public Perfil() {
		super();
		// TODO Auto-generated constructor stub
	}
		
}
