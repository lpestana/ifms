package logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProdutoDao;
import model.Produto;

public class ProdutoExcluir implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		ProdutoDao dao = new ProdutoDao();
		Produto produto = new Produto(id, "", "", "", "",null);
		dao.delete(produto);
		return "sistema?logica=ProdutoListar";
	}

}
