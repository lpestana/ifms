package dao;

import java.sql.Connection;
import java.util.List;

import jdbc.FactoryConnection;

public abstract class Dao<T> {
	public abstract void insert(T t);
	public abstract void delete(T t);
	public abstract void update(T t);
	public abstract List<T> getAll();
	public abstract T get(int id); 
	protected Connection conexao = null;
	public Dao() {
		conexao = FactoryConnection.getConnection();
	}
}
