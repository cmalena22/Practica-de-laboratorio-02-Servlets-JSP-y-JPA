package ec.edu.ups.filtro;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter({"/JSPs/EliminarTelefono.jsp","/JSPs/ListarTelefono.jsp","/JSPs/ModificarTelefono.jsp","/JSPs/RegistraTelefono.jsp","/JSPs/Telefono.jsp"})
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest peticion= (HttpServletRequest)request;
		// pass the request along the filter chain
		HttpSession session= peticion.getSession();
		HttpServletResponse respues= (HttpServletResponse)response;
		if(session.getAttribute("usuario")==null)
		{
			respues.sendRedirect("..//html/index.html");
			System.out.println("dfgfg si llega");
		}else
		{
			chain.doFilter(request, response);
			
			System.out.println("no llega");
		}
	}

	

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
