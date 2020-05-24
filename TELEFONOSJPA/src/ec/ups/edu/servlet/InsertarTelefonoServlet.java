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
import ec.ups.edu.entidades.Usuario;


/**
 * Servlet implementation class InsertarTelefonoServlet
 */
@WebServlet("/InsertarTelefonoServlet")
public class InsertarTelefonoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
TelefonoDao dao = DaoFactory.getFactory().getTelefonoDao();
	
	//JDBCTelefonoDAO tel= new JDBCTelefonoDAO();
	Telefono telefono=new Telefono();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarTelefonoServlet() {
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
		case "Listar":
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/TELEFONOSJPA/JSPs/ListarTelefono.jsp");  
			//request.getRequestDispatcher("../html/index.html").forward(request, response);
			  break;
		case "Modificar":
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/TELEFONOSJPA/JSPs/ModificarTelefono.jsp");  
			//request.getRequestDispatcher("../html/index.html").forward(request, response);
			  break;
		
		case "Eliminar":
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/TELEFONOSJPA/JSPs/EliminarTelefono.jsp");  
			 
			//request.getRequestDispatcher("../html/index.html").forward(request, response);
			  break;
		default:
			  break;
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub	
		HttpSession session=request.getSession(true);
		//JDBCPersonaDAO dd= new JDBCPersonaDAO();
		String cedula1=request.getParameter("cedula");
		String numero=request.getParameter("numero");
		String tipo=request.getParameter("tipo");
		String operadora=request.getParameter("operadora");
		telefono.setNumero(numero);
		telefono.setTipo(tipo);
		telefono.setOperadora(operadora);
		Usuario usu=new Usuario();
		usu.setCedula(cedula1);
		telefono.setCedula(usu);
		String modi=telefono.getNumero();
		System.out.println("cedula:"+cedula1);
		System.out.println("numero:"+numero);
		System.out.println("tipo:"+tipo);
		System.out.println("operadora:"+operadora);
		System.out.println("Usuarioooooooooooooooooooo:"+usu);
		dao.create(telefono);
			request.setAttribute("telefono", modi);
			request.getRequestDispatcher("/JSPs/RegistraTelefono.jsp").forward(request, response);
	}
		
}
