package model;

public class Categoria {
	  private int id;
	  private String descricao;
	
	  
	  
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
	
	
	public Categoria(int id, String descricao) {
		super();
		this.id = id;
		this.descricao = descricao;
		
	}	
	

	@Override
	public String toString() {
		
		return "Categoria [id=" + id + ", descricao=" + descricao +"]";
	}

	 
	
}
