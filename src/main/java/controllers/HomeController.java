package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartDAO;
import dao.CategoryDAOImpl;
import dao.ProductDAOImpl;
import entities.AccountDetails;

@RequestMapping(value = "/")
@Controller
public class HomeController {

	@Autowired
	private CategoryDAOImpl categoryDAO;

	@Autowired
	private ProductDAOImpl productDAO;

	@Autowired
	private CartDAO cartDAO;

	@RequestMapping(value = { "/", "/home" })
	public String index(Model model) {
		try {
			Object userObject = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

			if (userObject instanceof AccountDetails) {
				AccountDetails user = (AccountDetails) userObject;
				model.addAttribute("user", user);
			}

		} catch (ClassCastException ex) {
			ex.printStackTrace();
		}

		model.addAttribute("listProduct", productDAO.getAll());
		model.addAttribute("listCategory", categoryDAO.getAll());
		return "home";
	}

	@RequestMapping(value = "/shop")
	public String shop(Model model, @RequestParam(name = "pageno", required = false) String pageno,
			@RequestParam(name = "keyword", required = false) String keyword) {
		model.addAttribute("listProduct", productDAO.getAll());
		model.addAttribute("listCategory", categoryDAO.getAll());
		int pageNo = 1;
		int pagesize = 6;
		var totalPage = 1;
		pageNo = pageno != null ? Integer.parseInt(pageno) : 1;
		var count = productDAO.count();
		var listPage = productDAO.paging(pageNo, pagesize);
		totalPage = count % pagesize == 0 ? count / pagesize : (count / pagesize) + 1;
		if (keyword != null) {
			listPage = productDAO.search(keyword, pageNo, pagesize);
			count = productDAO.countPage(keyword);
			totalPage = count % pagesize == 0 ? count / pagesize : (count / pagesize) + 1;
			model.addAttribute("listPage", listPage);
			model.addAttribute("totalPage", totalPage);
			return "shop";
		} else {
			model.addAttribute("listPage", listPage);
			model.addAttribute("totalPage", totalPage);
			return "shop";
		}

	}

	@RequestMapping(value = "/category/{id}")
	public String shopByCate(Model model, @PathVariable(name = "id") String id) {
		model.addAttribute("listProduct", productDAO.findByCategory(id));
		model.addAttribute("listCategory", categoryDAO.getAll());
		return "shop";

	}

	@RequestMapping(value = "/detail/{id}")
	public String detail(Model model, @PathVariable("id") String id) {
		model.addAttribute("listProduct", productDAO.getAll());
		model.addAttribute("listCategory", categoryDAO.getAll());
		model.addAttribute("product", productDAO.find(id));
		return "detail";
	}

	@RequestMapping(value = { "/blog" })
	public String blog(Model model) {
		model.addAttribute("listProduct", productDAO.getAll());
		model.addAttribute("listCategory", categoryDAO.getAll());
		return "blog";
	}

	@RequestMapping(value = { "/contact" })
	public String contact(Model model) {
		model.addAttribute("listProduct", productDAO.getAll());
		model.addAttribute("listCategory", categoryDAO.getAll());
		return "contact";
	}

	@RequestMapping(value = "/logincus")
	public String logincus(Model model) {
		System.out.println("logincus");
		return "logincus";
	}

	@GetMapping(value = "/cart")
	public String cart(Model model) {
		model.addAttribute("listCart", cartDAO.getAll());
		return "cart";
	}

}
