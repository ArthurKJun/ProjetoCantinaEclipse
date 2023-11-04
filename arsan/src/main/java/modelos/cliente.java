package modelos;

public class cliente {

	private int cod_cliente;
	private String nome;
	private String cpf;
	private String telefone;

	public cliente(int cod_cliente, String nome, String cpf, String fone) {

		this.cod_cliente = cod_cliente;
		this.nome = nome;
		this.cpf = cpf;
		this.telefone = fone;

	}

	public int getCod_cliente() {
		return cod_cliente;
	}

	public void setCod_cliente(int cod_cliente) {
		this.cod_cliente = cod_cliente;
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

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

}