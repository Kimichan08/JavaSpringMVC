package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entities.Product;

@Repository
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getAll() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List result = session.createQuery("from Product").list();
		session.getTransaction().commit();
		return result;
	}

	@Override
	public Product find(String key) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Product pro = session.find(Product.class, key);
		session.getTransaction().commit();
		return pro;
	}

	@Override
	public void add(Product obj) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(obj);
		session.getTransaction().commit();
	}

	@Override
	public void update(Product obj) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(obj);
		session.getTransaction().commit();
	}

	@Override
	public void delete(String key) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Product pro = session.find(Product.class, key);
		session.remove(pro);
		session.getTransaction().commit();
	}

	@Override
	public List<Product> search(String name, int pageno, int pagesize) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List result = session.createQuery("from Product where proName like :name").setParameter("name", "%"+name+"%").list();
		session.getTransaction().commit();
		return result;
	}

	@Override
	public List<Product> paging(int page, int pagesize) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List result = session.createQuery("from Product").setFirstResult((page-1)*pagesize).setMaxResults(pagesize).list();
		session.getTransaction().commit();
		return result;
	}

	@Override
	public List<Product> findByCategory(String key) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List result = session.createQuery("from Product where cateId = :cateId").setParameter("cateId", key).getResultList();
		session.getTransaction().commit();
		return result;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		int total = 0;
		Session session = sessionFactory.openSession();
		try {
			total = session.createQuery("from Product", Product.class).list().size();
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			session.close();
		}
		return total;
	}

	@Override
	public int countPage(String name) {
		// TODO Auto-generated method stub
		int total = 0;
		Session session = sessionFactory.openSession();
		try {
			total = session.createQuery("from Product where lower(proName) like lower(:name)", Product.class).setParameter("name", "%" + name+ "%").list().size();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return total;
	}
	

}
