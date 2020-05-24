package ec.ups.edu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ec.ups.edu.PatronDao.DaoFactory;
import ec.ups.edu.PatronDao.UsuarioDao;
import ec.ups.edu.entidades.Usuario;

/**
 * Servlet implementation class IniciarSesion
 */
@WebServlet("/IniciarSesion")
public class IniciarSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Usuario  p= new Usuario();
    UsuarioDao dao= DaoFactory.getFactory().getUsuarioDao();	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IniciarSesion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session=request.getSession(true);
			String accion=request.getParameter("accion");
			String user=request.getParameter("nombre");
			String contra=request.getParameter("contra");
			System.out.println("kdfbdsfgsbdfjkbksfg");
			p=dao.validar(user, contra);			
			String cedula=p.getCedula();
			if (p.getCorreo()!=null) {	
				System.out.println("SDKJNFDF"+cedula);
				request.getSession().setAttribute("nombre", cedula);
				request.getSession().setAttribute("usuario",user);		
				response.sendRedirect(request.getContextPath()+"/JSPs/Telefono.jsp?nombre="+cedula);
			}else
			
				response.sendRedirect(request.getContextPath()+"/html/index.html");
	
	}
}
