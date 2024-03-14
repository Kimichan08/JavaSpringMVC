package controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.CategoryDAO;
import dao.CategoryDAOImpl;
import dao.ProductDAO;
import dao.ProductDAOImpl;
import entities.AccountDetails;
import entities.Category;
import entities.Product;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private CategoryDAOImpl categoryDAO;

	@Autowired
	private ProductDAOImpl productDAO;

	public AdminController() {
	}
	
	@RequestMapping("/welcome")
	public String adminPage(Model model) {
		model.addAttribute("mess", "Welcome to admin page");
		AccountDetails account =  (AccountDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("account", account);
		return "admin";
	}

	@RequestMapping(value = { "" }, method = RequestMethod.GET)
	public String index(Model model) {
//		System.out.println("admin");
		model.addAttribute("categories", categoryDAO.getAll());
		return "admin";
	}

	// Category

	@RequestMapping(value = { "/danh-muc-san-pham" }, method = RequestMethod.GET)
	public String listCategory(Model model) {
		model.addAttribute("categories", categoryDAO.getAll());
		return "listCategory";
	}

	@RequestMapping(value = { "/them-moi-danh-muc" }, method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("categories", categoryDAO.getAll());
		return "addCategory";
	}

	@RequestMapping(value = { "/them-moi-danh-muc" }, method = RequestMethod.POST)
	public String addCategory(Model model, @ModelAttribute Category category) {
		boolean check = true;
		if (check) {
			categoryDAO.add(category);
			return "redirect:/admin/danh-muc-san-pham";
		} else {
			System.out.println("Failed!!!");
		}
		return null;

	}

	@RequestMapping(value = { "/cap-nhat-danh-muc" }, method = RequestMethod.GET)
	public String edit(@RequestParam("id") int id, Model model) {
		var category = categoryDAO.find(id);
		model.addAttribute("category", category);
		return "editCategory";
	}

	@RequestMapping(value = { "/cap-nhat-danh-muc" }, method = RequestMethod.POST)
	public String editCategory(Model model, @ModelAttribute("category") Category category) {
		boolean check = true;
		if (check) {
			categoryDAO.update(category);
			return "redirect:/admin/danh-muc-san-pham";
		} else {
			System.out.println("Faild!!!");
		}
		return null;

	}
	
	@RequestMapping(value = { "/xoa-danh-muc" }, method = RequestMethod.GET)
	public String delete(@RequestParam("id") int id) {
		categoryDAO.delete(id);
		return "redirect:/admin/danh-muc-san-pham";
	}
	

	// Product
	@RequestMapping(value = { "/danh-sach-san-pham" }, method = RequestMethod.GET)
	public String index(Model model, @RequestParam(name="pageno", required = false)String pageno , @RequestParam(name="keyword", required = false)String keyword) {
		int pageNo = 1;
		int pagesize = 5;
		var totalPage = 1;
		pageNo = pageno!= null ? Integer.parseInt(pageno) : 1;
		var count = productDAO.count();
		var listPage = productDAO.paging(pageNo, pagesize);
		totalPage = count % pagesize == 0 ? count / pagesize : (count / pagesize) + 1;
		if (keyword != null) {
			listPage = productDAO.search(keyword, pageNo, pagesize);
			count = productDAO.countPage(keyword);
			totalPage = count % pagesize == 0 ? count / pagesize : (count / pagesize) + 1;
			model.addAttribute("listPage", listPage);
			model.addAttribute("totalPage", totalPage);
			return "listProduct";
		} else {
			model.addAttribute("listPage", listPage);
			model.addAttribute("totalPage", totalPage);
			return "listProduct";
		}
	}
	
	@RequestMapping(value = { "/them-moi-san-pham" }, method = RequestMethod.GET)
	public String addPro(Model model) {
		
		model.addAttribute("categories", categoryDAO.getAll());
		model.addAttribute("product", new Product());
		return "addProduct";
	}

	@RequestMapping(value = { "/them-moi-san-pham" }, method = RequestMethod.POST)
	public String addProduct(Model model, @ModelAttribute("product") Product product, @RequestParam(value = "file") MultipartFile[] fileImage, HttpServletRequest req) {
		
		if(fileImage.length>0) {
			
			String uploadRootPath = req.getServletContext().getRealPath("uploads/images");

			System.out.println(uploadRootPath+"/"+fileImage[0].getOriginalFilename());

			File destination = new File(uploadRootPath+"/"+fileImage[0].getOriginalFilename());

			try {

				fileImage[0].transferTo(destination);

			} catch (IllegalStateException | IOException e) {

			e.printStackTrace();

			}

			product.setImage("images/"+fileImage[0].getOriginalFilename());

			}

			productDAO.add(product);

			return "redirect:/admin/danh-sach-san-pham";

	}
	
	@RequestMapping(value = { "/cap-nhat-san-pham" }, method = RequestMethod.GET)
	public String editPro(@RequestParam("id") String id, Model model) {
		var product = productDAO.find(id);
		model.addAttribute("categories", categoryDAO.getAll());
		model.addAttribute("product",product);
		return "editProduct";
	}
	
	@RequestMapping(value = { "/cap-nhat-san-pham" }, method = RequestMethod.POST)
	public String editProduct(Model model, @ModelAttribute("product") Product product, @RequestParam(value = "file") MultipartFile[] fileImage, HttpServletRequest req) {
	
		if(fileImage.length>0) {

			String uploadRootPath = req.getServletContext().getRealPath("uploads/images");

			System.out.println(uploadRootPath+"/"+fileImage[0].getOriginalFilename());

			File destination = new File(uploadRootPath+"/"+fileImage[0].getOriginalFilename());
			try {

				fileImage[0].transferTo(destination);

			} catch (IllegalStateException | IOException e) {

			e.printStackTrace();

			}

			product.setImage("images/"+fileImage[0].getOriginalFilename());

			}

//			System.out.println(product.getCateId() + "cateId");
//			System.out.println(product.getProId() + " productId");
			productDAO.update(product);

			return "redirect:/admin/danh-sach-san-pham";

	}
	
	@RequestMapping(value = { "/xoa-san-pham" }, method = RequestMethod.GET)
	public String delete(@RequestParam("id") String id) {
		productDAO.delete(id);
		return "redirect:/admin/danh-sach-san-pham";
	}

}
