package logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProdutoDao;
import dao.CategoriaDao;
import model.Produto;
import model.Categoria;

public class ProdutoSalvar implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int id = Integer.parseInt(req.getParameter("id"));
		String descricao = req.getParameter("descricao");
		String valorunitario = req.getParameter("valorunitario");
		String embalagem = req.getParameter("embalagem");
		String estoque = req.getParameter("estoque");
		int cod_categoria = Integer.parseInt(req.getParameter("cod_categoria"));
		CategoriaDao categoriaDao = new CategoriaDao();
		Categoria categoria = categoriaDao.get(cod_categoria);
		Produto produto = new Produto(id, descricao, valorunitario, embalagem, estoque, categoria);
		ProdutoDao dao = new ProdutoDao();
		if (id==0) {
		  dao.insert(produto);
		} else {
		  dao.update(produto);
		}
		return "sistema?logica=ProdutoListar";
	}

}
