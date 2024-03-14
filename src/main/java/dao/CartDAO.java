package dao;

import java.util.List;

import entities.Cart;

public interface CartDAO {

	public List<Cart> getAll();
	public Boolean create(Cart cart);
	public Cart find(Integer id);
	public Boolean update(Cart cart);
	public Boolean delete(Integer id);
}
