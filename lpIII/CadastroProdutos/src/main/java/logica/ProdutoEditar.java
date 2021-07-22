package logica;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProdutoDao;
import dao.CategoriaDao;
import model.Produto;
import model.Categoria;

public class ProdutoEditar implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int id = Integer.parseInt(req.getParameter("id"));


		ProdutoDao dao = new ProdutoDao();
		Produto produto = dao.get(id);
		req.setAttribute("produto", produto);
		CategoriaDao daoCategoria = new CategoriaDao();
		List<Categoria> categorias = daoCategoria.getAll();
		req.setAttribute("categorias", categorias);
		return "WEB-INF/frmProduto.jsp";
	}

}
