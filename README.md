# Practica-de-laboratorio-02-Servlets-JSP-y-JPA
Creando entidades 
package ec.ups.edu.entidades;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Telefono
 *
 */
@Entity

public class Telefono implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String codigo;
	@ManyToOne
	@JoinColumn
	private Usuario cedula;
	private String numero;
	private String tipo;
	private String operadora;
	
	public Telefono() {
		
	}
	
	public Telefono(String codigo, Usuario cedula, String numero, String tipo, String operadora) {
		
		this.codigo = codigo;
		this.cedula = cedula;
		this.numero = numero;
		this.tipo = tipo;
		this.operadora = operadora;
	}
	


	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public Usuario getCedula() {
		return cedula;
	}

	public void setCedula(Usuario cedula) {
		this.cedula = cedula;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getOperadora() {
		return operadora;
	}

	public void setOperadora(String operadora) {
		this.operadora = operadora;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cedula == null) ? 0 : cedula.hashCode());
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
		result = prime * result + ((numero == null) ? 0 : numero.hashCode());
		result = prime * result + ((operadora == null) ? 0 : operadora.hashCode());
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Telefono other = (Telefono) obj;
		if (cedula == null) {
			if (other.cedula != null)
				return false;
		} else if (!cedula.equals(other.cedula))
			return false;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		if (numero == null) {
			if (other.numero != null)
				return false;
		} else if (!numero.equals(other.numero))
			return false;
		if (operadora == null) {
			if (other.operadora != null)
				return false;
		} else if (!operadora.equals(other.operadora))
			return false;
		if (tipo == null) {
			if (other.tipo != null)
				return false;
		} else if (!tipo.equals(other.tipo))
			return false;
		return true;
	}



	@Override
	public String toString() {
		return "Telefono [codigo=" + codigo + ", cedula=" + cedula + ", numero=" + numero + ", tipo=" + tipo
				+ ", operadora=" + operadora + "]";
	}
	
	
   
}

Entidad  Usuario
package ec.ups.edu.entidades;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Usuario
 *
 */
@Entity

public class Usuario implements Serializable {

	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String cedula;
	private String nombre;
	private String apellido;
	@Column(name="correo",unique=true, nullable=false)
	private String correo;
	
	
	@OneToMany(cascade = CascadeType.ALL,mappedBy = "cedula")	
	private Set<Telefono>telefono;
	
	public Usuario() {
		
	
	}
	
	
	public Usuario(String cedula, String nombre, String apellido, String correo) {
		super();
		this.cedula = cedula;
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
		telefono=new HashSet<Telefono>();
	}


	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public Set<Telefono> getTelefono() {
		return telefono;
	}

	public void setTelefono(Set<Telefono> telefono) {
		this.telefono = telefono;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((apellido == null) ? 0 : apellido.hashCode());
		result = prime * result + ((cedula == null) ? 0 : cedula.hashCode());
		result = prime * result + ((correo == null) ? 0 : correo.hashCode());
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
		result = prime * result + ((telefono == null) ? 0 : telefono.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		if (apellido == null) {
			if (other.apellido != null)
				return false;
		} else if (!apellido.equals(other.apellido))
			return false;
		if (cedula == null) {
			if (other.cedula != null)
				return false;
		} else if (!cedula.equals(other.cedula))
			return false;
		if (correo == null) {
			if (other.correo != null)
				return false;
		} else if (!correo.equals(other.correo))
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		if (telefono == null) {
			if (other.telefono != null)
				return false;
		} else if (!telefono.equals(other.telefono))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Usuario [cedula=" + cedula + ", nombre=" + nombre + ", apellido=" + apellido + ", correo=" + correo
				+ ", telefono=" + telefono + "]";
	}
	
	
   
   
}
Paquete Dao
package ec.ups.edu.PatronDao;

import ec.ups.edu.jpa.JPADaoFactory;

public abstract class DaoFactory {
	protected static DaoFactory factory= new JPADaoFactory();
	
	public static DaoFactory getFactory() {
		return factory;
	}
	public abstract TelefonoDao getTelefonoDao();
	public abstract UsuarioDao getUsuarioDao();
	
	
}
GenericDao
package ec.ups.edu.PatronDao;

import java.util.List;

public interface GenericDao  <T,ID> {
	public void create(T entity);
	public T read(ID id);
	public void update(T entity);
	public void delete (T entity);
	public void deleteById(ID id);
	public List<T> find();
	public List<T>find(String []attributes,String[]values);
	public List<T>find(String []attributes,String[]values,String order,int index,int size);
	
}
Telefono Dao
package ec.ups.edu.PatronDao;

import ec.ups.edu.entidades.Telefono;

public interface TelefonoDao extends GenericDao<Telefono, Integer>{

}
UsuarioDao
package ec.ups.edu.PatronDao;

import ec.ups.edu.entidades.Usuario;

public interface UsuarioDao  extends GenericDao<Usuario, String> {

}
Paquete JPA
package ec.ups.edu.jpa;

import ec.ups.edu.PatronDao.DaoFactory;
import ec.ups.edu.PatronDao.TelefonoDao;
import ec.ups.edu.PatronDao.UsuarioDao;

public class JPADaoFactory extends DaoFactory {

	@Override
	public TelefonoDao getTelefonoDao() {
		// TODO Auto-generated method stub
		return new JPATelefonoDao();
	}

	@Override
	public UsuarioDao getUsuarioDao() {
		// TODO Auto-generated method stub
		return new JPAUsuarioDao();
	}

}

JPAGENERICDao

package ec.ups.edu.jpa;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import ec.ups.edu.PatronDao.GenericDao;
import ec.ups.edu.entidades.Telefono;

public class JPAGenericDao<T,ID> implements GenericDao<T, ID> {
	 private Class<T> persistentClass;
	    protected EntityManager em;

	    public JPAGenericDao(Class<T> persistentClass) {
	    	this.persistentClass = persistentClass;
			this.em = Persistence.createEntityManagerFactory("jpa").createEntityManager();
		   
		}
	

	@Override
	public void create(T entity) {
		em.getTransaction().begin();
		try {
			em.persist(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("----------------Error:JPAGenericDao:create"+e);
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		}
		
	}

	@Override
	public T read(ID id) {		
		return em.find(persistentClass, id);
	}

	@Override
	public void update(T entity) {
		em.getTransaction().begin();
		try {
			em.merge(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("++++++++++++++++++++++++Error:JPAGenericDAO:update"+e);
				if (em.getTransaction().isActive()) {
					em.getTransaction().rollback();
				}	
		}
		
	}

	@Override
	public void delete(T entity) {
		em.getTransaction().begin();
		try {
			em.remove(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("*****************Error:JPAGenericDAO:delete"+e);
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		}
		
	}

	@Override
	public void deleteById(ID id) {
		T entity=this.read(id);
		if (entity !=null) {
			this.delete(entity);
		}
		
	}

	 @SuppressWarnings({ "rawtypes", "unchecked" })
	    @Override
	    public List<T> find() {
		em.getTransaction().begin();
		List<T> lista = null;
		try {
		    javax.persistence.criteria.CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
		    cq.select(cq.from(persistentClass));
		    lista = em.createQuery(cq).getResultList();
		    em.getTransaction().commit();
		} catch (Exception e) {
		    e.printStackTrace();
		}
		return lista;
	    }
	@Override
	public List<T> find(String[] attributes, String[] values) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> find(String[] attributes, String[] values, String order, int index, int size) {
		return null;
		
	    }

	@Override
	public Usuario validar(String correo, String contra) {
		Usuario user=new Usuario();
		try {
			String sql="SELECT u FROM Usuario u where u.correo='"+correo+"' and u.contra='"+contra+"'";
			Query query = em.createQuery(sql);
			user=(Usuario) query.getSingleResult();
			System.out.println("recupere"+user);	
		} catch (Exception e) {
			System.out.println("Usuario no encontrado"+e.getMessage());
		}
			
		return user;
	
	}
	public List<Telefono>  findbyUserId(String cedula) {
	
		UsuarioDao dao= DaoFactory.getFactory().getUsuarioDao();	
		Usuario usu=dao.read(cedula);
		String sql=("SELECT t FROM Telefono t where t.cedula.cedula='"+usu.getCedula()+"'");	
		List<Telefono> list=em.createQuery(sql).getResultList();
							
		return list;
	}
}
 JPATelefonoDao
package ec.ups.edu.jpa;

import ec.ups.edu.PatronDao.TelefonoDao;
import ec.ups.edu.entidades.Telefono;

public class JPATelefonoDao extends JPAGenericDao<Telefono, Integer>  implements TelefonoDao {
	
	public JPATelefonoDao() {
		super(Telefono.class);
	}

}
JPAUsuarioDao
package ec.ups.edu.jpa;

import ec.ups.edu.PatronDao.UsuarioDao;
import ec.ups.edu.entidades.Usuario;

public class JPAUsuarioDao extends JPAGenericDao<Usuario, String> implements UsuarioDao{

	public JPAUsuarioDao() {
		super(Usuario.class);
		
	}

}
Paquete Servlet
Buscar Cedula Servlet
package ec.ups.edu.servlet;

import java.io.IOException;


import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;


import ec.ups.edu.PatronDao.DaoFactory;
import ec.ups.edu.PatronDao.TelefonoDao;
import ec.ups.edu.entidades.Telefono;

/**
 * Servlet implementation class BuscarPorCedulaServlet
 */
@WebServlet("/BuscarPorCedulaServlet")
public class BuscarPorCedulaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 TelefonoDao dao = DaoFactory.getFactory().getTelefonoDao();
	
	//JDBCTelefonoDAO tel= new JDBCTelefonoDAO();
	Telefono telefono=new Telefono();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarPorCedulaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion=request.getParameter("accion");
		if (accion.equalsIgnoreCase("Iniciar")) {
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/TELEFONOSJPA/html/index.html");  
		}
		else if (accion.equalsIgnoreCase("Insertar")) {
			System.out.println("usuarioooooooooooooooo");
			response.sendRedirect("/TELEFONOSJPA/JSPs/InsertarUsuario.jsp");  
		}
		else if (accion.equalsIgnoreCase("Inicio")) {
			System.out.println("casaaaaaaaaaaaaaaaaaaaaaaaaa");
			response.sendRedirect("/TELEFONOSJPA/JSPs/Publicca.jsp");  
		}
		/*switch (accion) {		
		case "Iniciar":
			System.out.println("shdbsdhfbshfbsfh");
			  response.sendRedirect("/PracticaJSPYJEE/html/index.html");  
			//request.getRequestDispatcher("../html/index.html").forward(request, response);
		case "Insertar":
			System.out.println("usuarioooooooooooooooo");
			response.sendRedirect("/PracticaJSPYJEE/JSPs/InsertarUsuario.jsp");  
			//request.getRequestDispatcher("../html/index.html").forward(request, response);
			  break;
		default:
			break;
		}*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String accion=request.getParameter("accion");
		String dato=request.getParameter("buscar");
		String correo=request.getParameter("correo");
			List<Telefono>lista=dao.findbyUserId(dato);
			request.setAttribute("telefono", lista);
			request.getRequestDispatcher("/JSPs/Publicca.jsp").forward(request, response);			
					
			
		
	}

}
Cerrar Sesion
package ec.ups.edu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CerrarSesionServlet
 */
@WebServlet("/CerrarSesionServlet")
public class CerrarSesionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CerrarSesionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesion= request.getSession(false);
		if (sesion!=null) {
			sesion.invalidate();
			System.out.println("Sesion destruidad");
			response.sendRedirect(request.getContextPath()+"/html/index.html");
			System.out.println("estoy aqui");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
Eliminar Telefono

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
 * Servlet implementation class EliminarTelefonoSErvlet
 */
@WebServlet("/EliminarTelefonoSErvlet")
public class EliminarTelefonoSErvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TelefonoDao dao = DaoFactory.getFactory().getTelefonoDao();
	
	//JDBCTelefonoDAO tel= new JDBCTelefonoDAO();
	Telefono telefono=new Telefono();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarTelefonoSErvlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			int numero=Integer.valueOf(request.getParameter("id"));
			Telefono tel=dao.read(numero);
				System.out.println(tel+"buuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu");
				dao.delete(tel);
				//request.setAttribute("telefono", lista);
				request.getRequestDispatcher("/JSPs/EliminarTelefono.jsp").forward(request, response);
		
	}

}
 Inicia Sesion
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
Insertar Telefono
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
Insertar Usuario

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

List Telefono
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
Modificar Telefono
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
Paquete Vista
Eliminar Telefono
		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Telefono</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="../css/Validar Formularios.js" ></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Bienvenido</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="/PracticaJSPYJEE/EliminarTelefonoSErvlet?accion=Listar">Listar
						Telefono</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/PracticaJSPYJEE/EliminarTelefonoSErvlet?accion=Modificar">Modificar
						Telefono</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/PracticaJSPYJEE/EliminarTelefonoSErvlet?accion=Registrar">Registrar
						Telefono</a></li>
			</ul>
			<div class="dropdown">
				<button style="border: none;"
					class="btn btn-outline-dark dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">${usuario}</button>

				<div class="dropdown-menu text-center"
					aria-labelledby="dropdownMenuButton">
					<img alt="" src="../imagenes/login.png" height="100" width="100"
						align="center"> <a class="dropdown-item" href="#">${name}</a>
					<a class="dropdown-item" href="#">${apellido}</a> <a
						class="dropdown-item" href="#">${usuario}</a> <a
						class="dropdown-item" href="#">${nombre}</a>
					<div class="dropdown-divider"></div>
					<form action="/PracticaJSPYJEE/CerrarSesionServlet" method="get">

						<input type="submit" id="crear" value="Salir" name="accion" />
					</form>
				</div>
			</div>
	</nav>
	<br>
	<div class="container col-lg-3">
	<h1>Formulario</h1>
	<form id="formulario01" method="POST"
		action="/PracticaJSPYJEE/EliminarTelefonoSErvlet">
		
		<input type="hidden" id="codigo" name="codigo" value="" /> <label
			for="numero">Numero:(*)</label> <input type="text" id="id" name="id"
			placeholder="Ingrese el numero" class="form-control" onkeypress="return validarNumeroo(event, this)" required="required"/> <br> 
			<input type="submit" id="eliminar" name="accion" value="Eliminar" class="btn btn-default" />
			
	</form>
	</div>
</body>
</html>
Insertar Usuario
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guia telefonica</title>
<link rel="stylesheet" type="text/css" href="../css/estilos.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="../css/Validar Formularios.js" ></script>
</head>
<body>
<header>
		<div class="container-fluid text-center"
			style="background-color: #2c3e50">
			<div style="color: white;">
				<br>
				<h1>Bienvenidos a la agenda Telefonica</h1>
				<br>

			</div>
		</div>

	</header>
	
	<div class="center-block">
		<nav class="navbar navbar-expand-lg navbar-light bg-light text-center">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Inicio"
						style="color: black;">Inicio</a></li>	
					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Iniciar"
						style="color: black;">Iniciar Sesion</a></li>
					
					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Insertar"
						style="color: black;">Registrar Usuario</a></li>
				
				</ul>			
			</div>
			</nav>
	</div>
	
	<div class="container col-lg-3">
	
	

	<h1>Formulario</h1> 
          <form action="/PracticaJSPYJEE/InsertarUsuarioServlet" method="post" >
                <label for="numero"> Cedula:</label>
                <input type="text" id="cedula" name="cedula" class="form-control" required="required" min="10"   maxlength="10"  onkeypress="return validarNumeroo(event, this)"/>
                <br>

                  <label for="tipo">Nombre:</label>
                  <input type="text" id="nombre" name="nombre" class="form-control" required="required" onkeyup="return validarLetras(this)"/>
                  <br>

                  <label for="operadora">Apellido:</label>
                
                  <input type="text" id="apellido" name="apellido"  class="form-control"  required="required" onkeyup="return validarLetras(this)" />
                    <br>
                   <label for="operadora">Correo:</label>
                  <input type="text" id="correo" name="correo" class="form-control" required="required"  />
                    <br>
                   <label for="operadora">Contraseña:</label>
                  <input type="text" id="contra" name="contra"  class="form-control"  required="required"/>
                        
                <br>
                 <input type="submit" id="crear" value="Usuario" name="accion" class="btn btn-default" />
                                
          </form>
      </div>
</body>
</html>
Listar Telefono
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Telefono</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Bienvenido</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Registrar" >Insertar Telefono</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Modificar">Modificar Telefono</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Eliminar">Eliminar Telefono</a>
      </li>     
    </ul>
     <div class="dropdown">
  <button style="border: none;" class="btn btn-outline-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   ${usuario}
  </button>
  
  <div class="dropdown-menu text-center"  aria-labelledby="dropdownMenuButton" >
  <img alt="" src="../imagenes/login.png" height="100" width="100" align="center">
  <a class="dropdown-item" href="#">${name}</a>
      <a class="dropdown-item" href="#">${apellido}</a>
    <a class="dropdown-item" href="#">${usuario}</a>
    <a class="dropdown-item" href="#">${nombre}</a>
<div class="dropdown-divider"></div>
<form action="/PracticaJSPYJEE/CerrarSesionServlet" method="get">		
		   <input type="submit" id="crear" value="Salir" name="accion"/>
	</form>
  </div>
  </div>
</nav>
<form action="/PracticaJSPYJEE/ListTelefonoServlet"  method="post">
 <input class="btn btn-danger btn block" type="submit" name="accion" value="Listar"> 
 <input id="cedula" name="cedula" type="hidden" value="${nombre}">
 </form>
 	<div >
 		<table class="table table-hover">
 		<thead>
 			<tr>
 			 <th> ID</th>
			    <th> Numero</th>
 				<th> Tipo</th>
				<th> Operadora </th>
					<th> Cedula </th>
				  </tr>
  </thead>  
  <tbody>  
  <c:forEach var="tel" items="${telefono}">  
  <tr>
  <td>${tel.getCodigo()}</td>
  	<td>${tel.getNumero()}</td>
 	<td>${tel.getTipo()}</td>
 	<td>${tel.getOperadora()}</td> 
 	<td>${tel.getUsuario_cedula().getCedula()}</td> 
  </tr>
 
  </c:forEach>
  
  
  </tbody>
 
 
 
 </table>
 
 
 
 
 
 </div>
</body>
</html>
Modifcar Telefono
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Telefono</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Bienvenido</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Registrar" >Insertar Telefono</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Modificar">Modificar Telefono</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Eliminar">Eliminar Telefono</a>
      </li>     
    </ul>
     <div class="dropdown">
  <button style="border: none;" class="btn btn-outline-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   ${usuario}
  </button>
  
  <div class="dropdown-menu text-center"  aria-labelledby="dropdownMenuButton" >
  <img alt="" src="../imagenes/login.png" height="100" width="100" align="center">
  <a class="dropdown-item" href="#">${name}</a>
      <a class="dropdown-item" href="#">${apellido}</a>
    <a class="dropdown-item" href="#">${usuario}</a>
    <a class="dropdown-item" href="#">${nombre}</a>
<div class="dropdown-divider"></div>
<form action="/PracticaJSPYJEE/CerrarSesionServlet" method="get">		
		   <input type="submit" id="crear" value="Salir" name="accion"/>
	</form>
  </div>
  </div>
</nav>
<form action="/PracticaJSPYJEE/ListTelefonoServlet"  method="post">
 <input class="btn btn-danger btn block" type="submit" name="accion" value="Listar"> 
 <input id="cedula" name="cedula" type="hidden" value="${nombre}">
 </form>
 	<div >
 		<table class="table table-hover">
 		<thead>
 			<tr>
 			 <th> ID</th>
			    <th> Numero</th>
 				<th> Tipo</th>
				<th> Operadora </th>
					<th> Cedula </th>
				  </tr>
  </thead>  
  <tbody>  
  <c:forEach var="tel" items="${telefono}">  
  <tr>
  <td>${tel.getCodigo()}</td>
  	<td>${tel.getNumero()}</td>
 	<td>${tel.getTipo()}</td>
 	<td>${tel.getOperadora()}</td> 
 	<td>${tel.getUsuario_cedula().getCedula()}</td> 
  </tr>
 
  </c:forEach>
  
  
  </tbody>
 
 
 
 </table>
 
 
 
 
 
 </div>
</body>
</html>
Publica 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guia telefonica</title>
<link href="/css/diseño.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

</head>
<body>
	<header>
		<div class="container-fluid text-center"
			style="background-color: #2c3e50">
			<div style="color: white;">
				<br>
				<h1>Bienvenidos a la agenda Telefonica</h1>
				<br>

			</div>
		</div>

	</header>

	<div class="center-block">
		<nav class="navbar navbar-expand-lg navbar-light bg-light text-center">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">

					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Iniciar"
						style="color: black;">Iniciar Sesion</a></li>
					
					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Insertar"
						style="color: black;">Registrar Usuario</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0"	action="/PracticaJSPYJEE/BuscarPorCedulaServlet" method="post">
					<input class="form-control mr-sm-2" type="search" placeholder="Cedula" name="buscar" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit"
						name="accion" value="Buscar">Buscar</button>
					<input id="cedula" name="cedula" type="hidden" value="${nombre}">
				</form>
			</div>
			</nav>
	</div>
	

	<div class="container">
		<section class="main row">
			<div class="form-group text-center col-md-8">
				<table class="table table-hover">
					<thead>
						<tr>

							<th>Numero</th>
							<th>Tipo</th>
							<th>Operadora</th>
							<th>Cedula</th>
							<th>Nombre</th>
							<th>Apellido</th>
							<th>Correo</th>
						</tr>
					</thead>
					<tbody style="align-content: center;">
						<c:forEach var="tel" items="${telefono}">
							<tr>

								<td>${tel.getNumero()}</td>
								<td>${tel.getTipo()}</td>
								<td>${tel.getOperadora()}</td>
								<td>${tel.getUsuario_cedula().getCedula()}</td>
								<td>${tel.getUsuario_cedula().getNombre()}</td>
								<td>${tel.getUsuario_cedula().getApellido()}</td>
								<td>${tel.getUsuario_cedula().getCorreo()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-4" style="text-align: justify;">


				<aside>
					<p>Los directorios telefónicos eran, originalmente, libros o
						revistas brindados por las empresas telefónicas, ayuntamientos,
						etc., en los cuales figuran los números de los abonados en un área
						geográfica determinada. Disponen a su vez, de teléfonos de interés
						público, como policía, bomberos, hospitales, protección civil,
						atención al drogodependiente, etc. Actualmente, se distribuyen
						también en formato electrónico e Internet.</p>

				</aside>
			</div>

		</section>
		<div class="row">
		<div class="col-md-4">
		
		<br>
		<br>
		</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<blockquote>Más información Nuestra empresa Call EPc<br>
					Buscar Contactos 
					<br>
					 Informacion <br>
					 Paginas Amarillas <br>
					 Contactos
					 
				</blockquote>
			</div>
			<div class="col-md-4">
				<blockquote>
				Internet <br>
				Telefonía <br>
				Servicios Corporativos <br>
				Planes que NO se comercializan<br></blockquote>
				<a href="tel:0987129327">(593) Llamar</a>
				
			</div>
			<div class="col-md-4">
				<blockquote>
				<p> <strong>Lo que contiene una agenda telefonica</strong> </p>
				Nombre y apellidos.<br>
				Teléfono móvil.<br>
				Correo electrónico.<br>
				Cedula.<br>
				<a href="mailto: cinthiaizacajia@gmail.com">Enviar Mensaje</a>
				
				
				</blockquote>
			</div>

		</div>

	</div>
	<div class="container">
	</div>
	
</body>
</html>
Registra Telefono
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar Telefono</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="../css/Validar Formularios.js" ></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Bienvenido</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="/PracticaJSPYJEE/InsertarTelefonoServlet?accion=Listar">Listar
						Telefono</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/PracticaJSPYJEE/InsertarTelefonoServlet?accion=Modificar">Modificar
						Telefono</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/PracticaJSPYJEE/InsertarTelefonoServlet?accion=Eliminar">Eliminar
						Telefono</a></li>

			</ul>
			<div class="dropdown">
				<button style="border: none;"
					class="btn btn-outline-dark dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">${usuario}</button>

				<div class="dropdown-menu text-center"
					aria-labelledby="dropdownMenuButton">
					<img alt="" src="../imagenes/login.png" height="100" width="100"
						align="center"> <a class="dropdown-item" href="#">${name}</a>
					<a class="dropdown-item" href="#">${apellido}</a> <a
						class="dropdown-item" href="#">${usuario}</a> <a
						class="dropdown-item" href="#">${nombre}</a>
					<div class="dropdown-divider"></div>
					<form action="/PracticaJSPYJEE/CerrarSesionServlet" method="get">
						<input type="submit" id="crear" value="Salir" name="accion" />
					</form>
				</div>
			</div>
	</nav>
	<br>
	<div class="container col-lg-3">
	<h1>Formulario</h1>
	<form action="/PracticaJSPYJEE/InsertarTelefonoServlet" method="post"
		role="form">
		<div class="form-group">
		<label for="numero">Numero:</label>
		<input type="text" id="numero"	name="numero" minlength="9" maxlength="10" class="form-control" required="required"  onkeypress="return validarNumeroo(event, this)" /> <br> 
		<label
			for="tipo">Tipo:</label> 
		<input type="text" id="tipo" name="tipo" class="form-control" onkeyup="return validarLetras(this)" required="required" />
		<br> 
		<label for="operadora">Operadora:</label> 
		<input type="text" id="operadora" name="operadora" class="form-control" onkeyup="return validarLetras(this)" required="required"/> <br> 
		<input id="cedula" name="cedula" type="hidden" value="${nombre}"> <input
			type="submit" id="crear" value="Ingresar" name="accion" class="btn btn-default"/>
		
		</div>
		

	</form>
	
	</div>
</body>
</html>

  
  <div class="dropdown-menu text-center"  aria-labelledby="dropdownMenuButton" >
  <img alt="" src="../imagenes/login.png" height="100" width="100" align="center">
  <a class="dropdown-item" href="#">${name}</a>
      <a class="dropdown-item" href="#">${apellido}</a>
    <a class="dropdown-item" href="#">${usuario}</a>
    <a class="dropdown-item" href="#">${nombre}</a>
	<div class="dropdown-divider"></div>
	<form action="/PracticaJSPYJEE/CerrarSesionServlet" method="get">
		
		   <input type="submit" id="crear" value="Salir" name="accion"/>
	</form>
  </div>
</div>
  </div>
</nav>

</body>
</html>
Telefono
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido Usuario</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Bienvenido</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="ListarTelefono.jsp" >Listar Telefono</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ModificarTelefono.jsp">Modificar Telefono</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="RegistraTelefono.jsp">Registrar Telefono</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="EliminarTelefono.jsp">Eliminar Telefono</a>
      </li>
     
    </ul>
    <div class="dropdown">
  <button style="border: none;" class="btn btn-outline-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   ${usuario}
  </button>