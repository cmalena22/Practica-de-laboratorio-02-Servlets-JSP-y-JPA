package ec.ups.edu.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ec.ups.edu.PatronDao.DaoFactory;
import ec.ups.edu.PatronDao.TelefonoDao;
import ec.ups.edu.entidades.Telefono;



/**
 * Servlet implementation class ModificarTelefonoServlet
 */
@WebServlet("/ModificarTelefonoServlet")
public class ModificarTelefonoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TelefonoDao dao = DaoFactory.getFactory().getTelefonoDao();
	
	//JDBCTelefonoDAO tel= new JDBCTelefonoDAO();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarTelefonoServlet() {
        super();
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
		case "Listar":
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/TELEFONOSJPA/JSPs/ListarTelefono.jsp");  
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
		HttpSession session=request.getSession(true);
		String accion=request.getParameter("accion");
		if ("Modificar".equalsIgnoreCase(accion)) {
		int codigo=Integer.valueOf(request.getParameter("id"));
		String numeroeditar=request.getParameter("numerom");
		String tipoeditar=request.getParameter("tipom");
		String operadoraeditar=request.getParameter("operadoram");
		Telefono telefono=dao.read(Integer.valueOf(request.getParameter("id")));
		telefono.setCodigo(codigo);
		telefono.setNumero(numeroeditar);
		telefono.setTipo(tipoeditar);
		telefono.setOperadora(operadoraeditar);
		System.out.println("Telefonooooooooooooooo"+telefono);
		dao.update(telefono);
		System.out.println("cedula:"+codigo);
		System.out.println("numero:"+numeroeditar);
		System.out.println("tipo:"+tipoeditar);
		System.out.println("operadora:"+operadoraeditar);
		
			//request.setAttribute("telefono", lista);
			request.getRequestDispatcher("/JSPs/ModificarTelefono.jsp").forward(request, response);
		}
	}

}
