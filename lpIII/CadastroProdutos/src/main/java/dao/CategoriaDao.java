package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Categoria;


public class CategoriaDao extends Dao<Categoria> {

	@Override
	public void insert(Categoria categoria) {
		String sql = "INSERT INTO categoria (descricao) VALUES (?) ";
		try {
			PreparedStatement sentenca = conexao.prepareStatement(sql);
			sentenca.setString(1, categoria.getDescricao());
			sentenca.execute();
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(Categoria categoria) {
		String sql = "DELETE FROM categoria WHERE id=?";
		try {
			PreparedStatement sentenca = conexao.prepareStatement(sql);
			sentenca.setInt(1,  categoria.getId());
			sentenca.execute();
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void update(Categoria categoria) {
		String sql = "UPDATE categoria SET descricao=? WHERE id=?";
		try {
			PreparedStatement sentenca = conexao.prepareStatement(sql);
			sentenca.setString(1, categoria.getDescricao());
			sentenca.setInt(2,  categoria.getId());
			sentenca.execute();
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Categoria> getAll() {
		ArrayList<Categoria> lista = new ArrayList<Categoria>();
		try {
			Statement sentenca = conexao.createStatement();
			String sql = "SELECT * FROM categoria ORDER BY descricao";
			ResultSet resultado = sentenca.executeQuery(sql);
			while(resultado.next()) {
			  int id = resultado.getInt("id");
			  String descricao = resultado.getString("descricao");
			  Categoria categoria = new Categoria(id, descricao);
			  lista.add(categoria);
			}
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lista;
	}

	@Override
	public Categoria get(int id) {
		String sql = "SELECT * FROM categoria WHERE id = ?";
		try {
			PreparedStatement sentenca = conexao.prepareStatement(sql);
			sentenca.setInt(1, id);
			ResultSet resultado = sentenca.executeQuery();
			Categoria categoria = null;
			if (resultado.next()) {
			  String descricao = resultado.getString("descricao");
			  categoria = new Categoria (id, descricao);
			  sentenca.close();
			  return categoria;
			}
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	

}
