package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import entities.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Category> getAll() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Category> result = session.createQuery("from Category", Category.class).getResultList();
		session.getTransaction().commit();
		return result;
	}

	@Override
	public Category find(Integer key) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Category cate = session.find(Category.class, key);
		session.getTransaction().commit();
		
		return cate;
	}

	@Override
	public void add(Category obj) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(obj);
		session.getTransaction().commit();
		
	}

	@Override
	public void update(Category obj) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(obj);
		session.getTransaction().commit();
		
	}

	@Override
	public void delete(Integer key) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Category cate = session.find(Category.class, key);
		session.remove(cate);
		session.getTransaction().commit();
		
	}

	@Override
	public List<Category> search(String name, int pageno, int pagesize) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Category> result = session.createQuery("from Category where cateName like :name", Category.class)
				.setParameter("name", "%" + name + "%").list();
		session.getTransaction().commit();
		
		return result;
	}

	

}
