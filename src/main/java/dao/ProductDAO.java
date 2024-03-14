package dao;

import java.util.List;

import entities.Product;

public interface ProductDAO extends GenericDAO<Product, String>{
	public List<Product> paging(int page, int pagesize);
	public List<Product> findByCategory(String key);
	int count();
	int countPage(String name);
}
