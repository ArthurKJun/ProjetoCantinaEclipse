package modelos;

public class produto{
	
	private int cod_produto;
	private String nome;
	private String preco;
	private int quantidade;
	
	
	public produto(int cod_produto, String nome, String preco, int quantidade) {
		
		this.cod_produto = cod_produto;
		this.nome = nome;
		this.preco = preco;
		this.quantidade = quantidade;
		
	}
	public int getCod_produto() {
		return cod_produto;
	}
	public void setCod_produto(int cod_produto) {
		this.cod_produto = cod_produto;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	
	
	
}