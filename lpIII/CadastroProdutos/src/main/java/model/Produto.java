package model;

import java.util.Objects;

public class Produto {
	private int id;
	private String descricao;
	private String valorunitario;
	private String embalagem;
	private String estoque;
	private Categoria categoria;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getValorunitario() {
		return valorunitario;
	}
	public void setValorunitario(String valorunitario) {
		this.valorunitario = valorunitario;
	}
	public String getEmbalagem() {
		return embalagem;
	}
	public void setEmbalagem(String embalagem) {
		this.embalagem = embalagem;
	}
	public String getEstoque() {
		return estoque;
	}
	public void setEstoque(String estoque) {
		this.estoque = estoque;
	}
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	@Override
	public String toString() {
		return "Produto2 [id=" + id + ", descricao=" + descricao + ", valorunitario=" + valorunitario + ", embalagem="
				+ embalagem + ", estoque=" + estoque + ", categoria=" + categoria + "]";
	}
	
	public Produto(int id, String descricao, String valorunitario, String embalagem, String estoque,
			Categoria categoria) {
		super();
		this.id = id;
		this.descricao = descricao;
		this.valorunitario = valorunitario;
		this.embalagem = embalagem;
		this.estoque = estoque;
		this.categoria = categoria;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Produto other = (Produto) obj;
		return id == other.id;
	}
	
	public Categoria getCagegoria() {
		return categoria;
	}
	public void setCagegoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
}





