package logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Categoria;

public class CategoriaNovo implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Categoria categoria = new Categoria(0, "");
		req.setAttribute("categoria", categoria);
		
		return "WEB-INF/frmCategoria.jsp";
	}

}
