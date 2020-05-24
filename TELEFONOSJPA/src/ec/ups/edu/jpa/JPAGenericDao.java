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
