package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import modelos.Usuario;
import util.Conexao;

public class usuarioController {
	private static Connection con = Conexao.getConexao();

	public static boolean salvar(Usuario ct) {
		try {
			PreparedStatement stm;
			if (ct.getCod_usuario() == 0) {
				stm = con.prepareStatement("insert into usuario(nome, cpf, email, cod_perfil, senha)values(?,?,?,?,?)");
				stm.setString(1, ct.getNome());
				stm.setString(2, ct.getCpf());
				stm.setString(3, ct.getEmail());
				stm.setInt(4, ct.getCod_perfil());
				stm.setString(5, ct.getSenha());
			} else {
				stm = con.prepareStatement(
						"update usuario set nome = ?, cpf = ?, email = ?, cod_perfil = ?, senha = ? where cod_usuario = ?");
				stm.setString(1, ct.getNome());
				stm.setString(2, ct.getCpf());
				stm.setString(3, ct.getEmail());
				stm.setInt(4, ct.getCod_perfil());
				stm.setString(4, ct.getSenha());
				stm.setInt(5, ct.getCod_usuario());
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
			PreparedStatement stm = con.prepareStatement("delete from usuario where cod_usuario = ?");
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
			PreparedStatement stm = con.prepareStatement("select * from usuario");
			rs = stm.executeQuery();
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return rs;
	}

	public static Usuario consultar(int id) {
		Usuario ct = null;
		try {
			PreparedStatement stm = con.prepareStatement("select * from usuario where cod_usuario = ?");
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				ct = new Usuario(rs.getInt("cod_usuario"), rs.getString("nome"), rs.getString("cpf"),
						 rs.getString("email"), rs.getInt("cod_perfil"), rs.getString("senha"));
			}
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return ct;
	}

}