package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import modelos.cliente;
import util.Conexao;

public class clienteController {
	
	private static Connection con = Conexao.getConexao();

	public static boolean salvar(cliente ct) {
		try {
			PreparedStatement stm;
			if (ct.getCod_cliente() == 0) {
				stm = con.prepareStatement("insert into clientes(nome, cpf, fone)values(?,?,?)");
				stm.setString(1, ct.getNome());
				stm.setString(2, ct.getCpf());
				stm.setString(3, ct.getTelefone());
			} else {
				stm = con.prepareStatement("update clientes set nome = ?, cpf = ?, fone = ? where cod_cliente = ?");
				stm.setString(1, ct.getNome());
				stm.setString(2, ct.getCpf());
				stm.setString(3, ct.getTelefone());
				stm.setInt(4, ct.getCod_cliente());
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
			PreparedStatement stm = con.prepareStatement("delete from clientes where cod_cliente = ?");
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
			PreparedStatement stm = con.prepareStatement("select * from clientes");
			rs = stm.executeQuery();
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return rs;
	}

	public static cliente consultar(int id) {
		cliente ct = null;
		try {
			PreparedStatement stm = con.prepareStatement("select * from clientes where cod_cliente = ?");
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				ct = new cliente(rs.getInt("cod_cliente"), rs.getString("nome"), rs.getString("cpf"),
						rs.getString("fone"));
			}
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return ct;
	}

}