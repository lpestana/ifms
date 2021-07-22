package logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoriaDao;
import model.Categoria;

public class CategoriaExcluir implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int id = Integer.parseInt(req.getParameter("id"));
		CategoriaDao dao = new CategoriaDao();
		Categoria categoria= new Categoria(id, "");
		dao.delete(categoria);
		return "sistema?logica=CategoriaListar";
	}

}
