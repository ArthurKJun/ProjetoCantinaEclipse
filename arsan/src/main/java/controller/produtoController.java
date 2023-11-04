package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import modelos.produto;
import util.Conexao;

public class produtoController {
	private static Connection con = Conexao.getConexao();

	public static boolean salvar(produto ct) {
		try {
			PreparedStatement stm;
			if (ct.getCod_produto() == 0) {
				stm = con.prepareStatement("insert into produtos(nome, preco, quantidade)values(?,?,?)");
				stm.setString(1, ct.getNome());
				stm.setString(2, ct.getPreco());
				stm.setInt(3, ct.getQuantidade());
				
			} else {
				stm = con.prepareStatement(
						"update produtos set nome = ?, preco = ?, quantidade = ? where cod_produto = ?");
				stm.setString(1, ct.getNome());
				stm.setString(2, ct.getPreco());
				stm.setInt(3, ct.getQuantidade());
				stm.setInt(4, ct.getCod_produto());
			}
			stm.execute();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return false;
		}
		return true;
	}

	public static boolean excluir(int id) {
		try {
			PreparedStatement stm = con.prepareStatement("delete from produtos where cod_produto = ?");
			stm.setInt(1, id);
			stm.execute();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return false;
		}
		return true;
	}

	public static ResultSet consultar() {
		ResultSet rs = null;
		try {
			PreparedStatement stm = con.prepareStatement("select * from produtos");
			rs = stm.executeQuery();
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return rs;
	}

	public static produto consultar(int id) {
		produto ct = null;
		try {
			PreparedStatement stm = con.prepareStatement("select * from produtos where cod_produto = ?");
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				ct = new produto(rs.getInt("cod_produto"), rs.getString("nome"), rs.getString("preco"),
						rs.getInt("quantidade"));
			}
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return ct;
	}

}