package modelos;

public class fornecedor {

	private int cod_fornecedor;
	private String nome;
	private String cnpj;
	private String fone;
	private String email;

	public fornecedor(int cod_fornecedor, String nome, String cnpj, String fone, String email) {

		this.cod_fornecedor = cod_fornecedor;
		this.nome = nome;
		this.cnpj = cnpj;
		this.fone = fone;
		this.email = email;

	}

	public int getCod_fornecedor() {
		return cod_fornecedor;
	}

	public void setCod_fornecedor(int cod_fornecedor) {
		this.cod_fornecedor = cod_fornecedor;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getFone() {
		return fone;
	}

	public void setFone(String fone) {
		this.fone = fone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}