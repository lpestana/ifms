package logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoriaDao;
import model.Categoria;

public class CategoriaSalvar implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int id = Integer.parseInt(req.getParameter("id"));
		String descricao = req.getParameter("descricao");
		Categoria categoria = new Categoria(id, descricao);
		CategoriaDao dao = new CategoriaDao();
		if (id==0) {
		  dao.insert(categoria);
		} else {
		  dao.update(categoria);
		}
		return "sistema?logica=CategoriaListar";
	}

}
