package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.AccountDAO;
import dao.CartDAO;
import dao.ProductDAO;
import entities.Account;
import entities.AccountDetails;
import entities.Cart;
import entities.Product;

@Controller
public class CartController {

	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private AccountDAO accountDAO;
	@Autowired
	private ProductDAO productDAO;
	@PostMapping(value = "/cart")
	public String add(Model model, @RequestParam(name = "productId", required = false) String productId) {
		
		AccountDetails user = (AccountDetails) SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal(); 
		Product product = productDAO.find(productId);
		Account acc = accountDAO.get(user.getUsername());
		if (product != null && acc != null) {
			System.out.println(product.getProId());
			List<Cart> Cart = cartDAO.getAll();
			Cart cartExisting = null;
			for (Cart cartItem : Cart) {
				if (cartItem.getProduct().getProId().equals(product.getProId()))
					cartExisting = cartItem;
				break;
			}
			if (cartExisting != null) {
				cartExisting.setQuantity(cartExisting.getQuantity() + 1);
				cartExisting.setTotalPrice(
						(double) (cartExisting.getQuantity() * ( product.getPrice() * (100 - (product.getSalePrice())) / 100)));
				cartDAO.update(cartExisting);
			} else {
				Cart cartNew = new Cart();
				cartNew.setProduct(product);
				cartNew.setQuantity(1);
				cartNew.setTotalPrice((double) (product.getPrice() * (100 - (product.getSalePrice())) / 100));
				cartNew.setAccount(acc);
				cartDAO.create(cartNew);
			}
		}

		return "cart";
	}
}
