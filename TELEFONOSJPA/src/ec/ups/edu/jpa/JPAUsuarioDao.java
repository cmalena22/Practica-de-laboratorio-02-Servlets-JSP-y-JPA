package ec.ups.edu.jpa;

import ec.ups.edu.PatronDao.UsuarioDao;
import ec.ups.edu.entidades.Usuario;

public class JPAUsuarioDao extends JPAGenericDao<Usuario, String> implements UsuarioDao{

	public JPAUsuarioDao() {
		super(Usuario.class);
		
	}

}
