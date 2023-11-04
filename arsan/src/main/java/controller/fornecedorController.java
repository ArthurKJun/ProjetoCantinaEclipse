package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import modelos.fornecedor;
import util.Conexao;

public class fornecedorController {
	private static Connection con = Conexao.getConexao();

	public static boolean salvar(fornecedor ct) {
		try {
			PreparedStatement stm;
			if (ct.getCod_fornecedor() == 0) {
				stm = con.prepareStatement("insert into fornecedores(nome, cnpj, fone, email)values(?,?,?,?)");
				stm.setString(1, ct.getNome());
				stm.setString(2, ct.getCnpj());
				stm.setString(3, ct.getFone());
				stm.setString(4, ct.getEmail());
			} else {
				stm = con.prepareStatement(
						"update fornecedores set nome = ?, cnpj = ?, fone = ?, email = ? where cod_fornecedor = ?");
				stm.setString(1, ct.getNome());
				stm.setString(2, ct.getCnpj());
				stm.setString(3, ct.getFone());
				stm.setString(4, ct.getEmail());
				stm.setInt(5, ct.getCod_fornecedor());
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
			PreparedStatement stm = con.prepareStatement("delete from fornecedores where cod_fornecedor = ?");
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
			PreparedStatement stm = con.prepareStatement("select * from fornecedores");
			rs = stm.executeQuery();
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return rs;
	}

	public static fornecedor consultar(int id) {
		fornecedor ct = null;
		try {
			PreparedStatement stm = con.prepareStatement("select * from fornecedores where cod_fornecedor = ?");
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				ct = new fornecedor(rs.getInt("cod_fornecedor"), rs.getString("nome"), rs.getString("cnpj"),
						rs.getString("fone"), rs.getString("email"));
			}
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return ct;
	}

}