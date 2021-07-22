package logica;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoriaDao;
import model.Categoria;

public class CategoriaListar implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		CategoriaDao dao = new CategoriaDao();
		List<Categoria> lista = dao.getAll();
		req.setAttribute("lista", lista);

		return "WEB-INF/listaCategoria.jsp";
	}

}
