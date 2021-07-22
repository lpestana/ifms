package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logica.Logica;

/**
 * Servlet implementation class Sistema
 */
@WebServlet("/sistema")
public class Sistema extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sistema() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// verificar acesso
		
		String parametro = request.getParameter("logica");      
		String nomeDaClasse = "logica." + parametro;
		try {        
			Class<?> classe = Class.forName(nomeDaClasse);        
			Logica logica = (Logica) classe.newInstance();
			// Recebe o String ap√≥s a execu√ß√£o da l√≥gica        
			String pagina = logica.executa(request, response);
			// Faz o forward para a p√°gina JSP        
			request.getRequestDispatcher(pagina).forward(request, response);      
		} catch (Exception e) {
			throw new ServletException("A LÛgica de negocios causou uma exceÁ„o", e);      
		}	
		
		// registrar log
	}
}
