package logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoriaDao;
import model.Categoria;

public class CategoriaEditar implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		CategoriaDao dao = new CategoriaDao();
		Categoria categoria = dao.get(id);
		req.setAttribute("categoria", categoria);
		return "WEB-INF/frmCategoria.jsp";
	}

}
