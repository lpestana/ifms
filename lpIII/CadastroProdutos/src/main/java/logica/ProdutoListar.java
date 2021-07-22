package logica;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProdutoDao;
import model.Produto;

public class ProdutoListar implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {

		ProdutoDao dao = new ProdutoDao();
		List<Produto> lista = dao.getAll();
		req.setAttribute("lista", lista);

		return "WEB-INF/listaProduto.jsp";

	}

}
