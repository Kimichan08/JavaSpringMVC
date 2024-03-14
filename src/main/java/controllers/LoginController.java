package controllers;

import javax.annotation.Nullable;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entities.AccountDetails;

@Controller
public class LoginController {
	
	@RequestMapping(value = {"/login" }, method = RequestMethod.GET)

	public String login(@Nullable @RequestParam(value = "error") String error, Model model) {
		if (error != null) {
			model.addAttribute("msg", "Login Failed!");
		}
		return "adminlogin";
	}

	@RequestMapping(value = "/checkrole")

	public String checkRole() {

		// lấy thông tin tài khoản

		AccountDetails account = (AccountDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		// duyệt role để kiểm tra và điều hướng

		
		for (var g : account.getAuthorities()) {

			if (g.getAuthority().equals("ROLE_ADMIN")) {
				
				return "redirect:/admin";

			}

//			if (g.getAuthority().equals("ROLE_STUDENT")) {
//
//				return "redirect:/student/";
//
//			}

		}

		return "403";

	}

	@RequestMapping("/logoutSuccess")

	public String logout(Model model) {

		model.addAttribute("msg", "Logout successfully!!!");

		return "adminlogin";

	}
	
	@RequestMapping("/logoutSuccessCus")

	public String logoutCus(Model model) {
		System.out.println(1);
		model.addAttribute("msg", "Logout successfully!!!");

		return "home";

	}
	
}
