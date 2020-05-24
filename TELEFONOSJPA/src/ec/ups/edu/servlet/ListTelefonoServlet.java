package ec.ups.edu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.ups.edu.PatronDao.DaoFactory;
import ec.ups.edu.PatronDao.TelefonoDao;
import ec.ups.edu.entidades.Telefono;

/**
 * Servlet implementation class ListTelefonoServlet
 */
@WebServlet("/ListTelefonoServlet")
public class ListTelefonoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TelefonoDao dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListTelefonoServlet() {
        super();
        dao=DaoFactory.getFactory().getTelefonoDao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion=request.getParameter("accion");
		switch (accion) {		
		case "Eliminar":
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/TELEFONOSJPA/JSPs/EliminarTelefono.jsp");  
			//request.getRequestDispatcher("../html/index.html").forward(request, response);
			  break;
		case "Modificar":
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/TELEFONOSJPA/JSPs/ModificarTelefono.jsp");  
			//request.getRequestDispatcher("../html/index.html").forward(request, response);
			  break;
		
		case "Registrar":
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/TELEFONOSJPA/JSPs/RegistraTelefono.jsp");  
			 
			//request.getRequestDispatcher("../html/index.html").forward(request, response);
			  break;
		default:
			  break;
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String cedula=request.getParameter("cedula");
	System.out.println("dkjfdjkfgbdjkfbsdjfgbsjdfgbsjdfbsjkfgbjdkfhbjdfgbdjfhgbdjfg"+cedula);
	System.out.println(cedula);
	List<Telefono>lista=dao.findbyUserId(cedula);
	System.out.println(lista);
	request.setAttribute("telefono", lista);
	request.getRequestDispatcher("/JSPs/ListarTelefono.jsp").forward(request, response);
	
	}

}
