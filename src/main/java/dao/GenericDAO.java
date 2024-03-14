package dao;

import java.util.List;

public interface GenericDAO<T,K> {
	public List<T> getAll();
	public T find(K key);
	public void add(T obj);
	public void update(T obj);
	public void delete(K key);
	public List<T> search(String name, int pageno, int pagesize);
	
}
