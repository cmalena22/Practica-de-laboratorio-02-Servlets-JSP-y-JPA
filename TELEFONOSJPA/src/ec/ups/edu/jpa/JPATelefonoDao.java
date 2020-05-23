package ec.ups.edu.jpa;

import ec.ups.edu.PatronDao.TelefonoDao;
import ec.ups.edu.entidades.Telefono;

public class JPATelefonoDao extends JPAGenericDao<Telefono, Integer>  implements TelefonoDao {
	
	public JPATelefonoDao() {
		super(Telefono.class);
	}

}
