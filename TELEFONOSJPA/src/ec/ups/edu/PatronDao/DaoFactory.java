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
