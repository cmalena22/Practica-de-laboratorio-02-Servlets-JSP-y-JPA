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
