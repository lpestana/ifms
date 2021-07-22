package logica;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.CategoriaDao;
import model.Categoria;
import model.Produto;


public class ProdutoNovo implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Produto produto = new Produto(0, "", "", "", "", null);
		req.setAttribute("produto", produto);
		CategoriaDao dao = new CategoriaDao();
		List<Categoria> categorias = dao.getAll();
		req.setAttribute("categorias", categorias);
		return "WEB-INF/frmProduto.jsp";
	}

}
