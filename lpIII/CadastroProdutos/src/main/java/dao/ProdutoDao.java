package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Categoria;
import model.Produto;

public class ProdutoDao extends Dao<Produto> {
	

	public void insert(Produto produto) {
		String sql = "INSERT INTO produto(descricao, valorunitario, embalagem, estoque, cod_categoria) VALUES (?,?,?,?,?)";
		try {
			PreparedStatement sentenca = conexao.prepareStatement(sql);
			sentenca.setString(1, produto.getDescricao());
			sentenca.setString(2, produto.getValorunitario());
			sentenca.setString(3, produto.getEmbalagem());
			sentenca.setString(4, produto.getEstoque());
			sentenca.setInt(5, produto.getCagegoria().getId());
			sentenca.execute();
			sentenca.close();
			
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(Produto produto) {
		String sql = "Delete From produto Where id=?";
		try {
			PreparedStatement sentenca = conexao.prepareStatement(sql);
			sentenca.setInt(1, produto.getId());
			sentenca.execute();
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	@Override
	public void update(Produto produto) {
		String sql = "UPDATE produto SET descricao=?, valorunitario=?, embalagem=?, estoque=?, cod_categoria=? WHERE id=?";
		try {
			PreparedStatement sentenca = conexao.prepareStatement(sql);
			sentenca.setString(1, produto.getDescricao());
			sentenca.setString(2, produto.getValorunitario());
			sentenca.setString(3, produto.getEmbalagem());
			sentenca.setString(4, produto.getEstoque());
			sentenca.setInt(5, produto.getCategoria().getId());
			sentenca.setInt(6, produto.getId());
			sentenca.execute();
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Produto> getAll() {
		ArrayList<Produto> lista = new ArrayList<Produto>();
		try {
			Statement sentenca = conexao.createStatement();
			String sql = "SELECT produto.*, categoria.descricao as categoria_descricao FROM produto "
						+ "JOIN categoria ON categoria.id = produto.cod_categoria "
						+ "ORDER BY descricao";
			ResultSet resultado = sentenca.executeQuery(sql);
			while(resultado.next()) {
			  int id = resultado.getInt("id");
			  String descricao = resultado.getString("descricao");
			  String valorunitario = resultado.getString("valorunitario");
			  String embalagem = resultado.getString("embalagem");
			  String estoque = resultado.getString("estoque");
			  int cod_categoria = resultado.getInt("cod_categoria");
			  String categoria_descricao = resultado.getString("categoria_descricao");
			  Categoria categoria = new Categoria(cod_categoria, categoria_descricao);
			  Produto produto = new Produto(id, descricao, valorunitario, embalagem, estoque,categoria);
			  lista.add(produto);
			}
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lista;
	}

	@Override
	public Produto get(int id) {
		String sql = "SELECT produto.*, categoria.descricao as categoria_descricao FROM produto JOIN categoria ON categoria.id = produto.cod_categoria WHERE produto.id = ?";
		try {
			PreparedStatement sentenca = conexao.prepareStatement(sql);
			sentenca.setInt(1, id);
			ResultSet resultado = sentenca.executeQuery();
			Produto produto = null;
			if (resultado.next()) {
			  String descricao = resultado.getString("descricao");
		      String valorunitario = resultado.getString("valorunitario");
			  String embalagem = resultado.getString("embalagem");
			  String estoque = resultado.getString("estoque");
			  int cod_categoria = resultado.getInt("cod_categoria");
			  String categoria_descricao = resultado.getString("categoria_descricao");
			  Categoria categoria = new Categoria (cod_categoria, categoria_descricao);
			  produto = new Produto(id, descricao, valorunitario, embalagem, estoque, categoria);
			  sentenca.close();
			  return produto;
			}
			sentenca.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
