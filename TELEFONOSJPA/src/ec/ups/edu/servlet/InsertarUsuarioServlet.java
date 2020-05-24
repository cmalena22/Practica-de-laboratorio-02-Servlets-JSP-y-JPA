package ec.ups.edu.servlet;

import java.io.IOException;

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
 * Servlet implementation class InsertarUsuarioServlet
 */
@WebServlet("/InsertarUsuarioServlet")
public class InsertarUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsuarioDao dao = DaoFactory.getFactory().getUsuarioDao();
	Usuario usuario = new Usuario();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarUsuarioServlet() {
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
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		String cedula=request.getParameter("cedula");
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String correo=request.getParameter("correo");
		String contra=request.getParameter("contra");
		usuario.setCedula(cedula);
		usuario.setNombre(nombre);
		usuario.setApellido(apellido);
		usuario.setCorreo(correo);
		usuario.setContra(contra);
		dao.create(usuario);
		System.out.println(usuario.toString());
					request.getRequestDispatcher("/JSPs/InsertarUsuario.jsp").forward(request, response);
	}

}
