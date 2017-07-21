/**
 * 
 */
package springboot.demo.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import springboot.demo.dmo.User;
import springboot.demo.service.UserService;
import springboot.demo.service.impl.SabSourceService;

/**
 * @author jiang
 *
 */
@Controller
public class IndexController {

	@Resource(name = "userService")
	private UserService userService;
	
	@Autowired
	SabSourceService esdSourceService;
	
	@RequestMapping(value = { "index", "/" })
	public String index(ModelMap model) {
		List<User> userList = userService.find(new User());
		model.put("userList", userList);
		return "index";// template目录下页面文件名
	}
	
	@RequestMapping("login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}

	@RequestMapping("loginSuccess")
	public String loginSuccess() {
		return "index";
	}

	@ResponseBody
	@RequestMapping("loginFail")
	public String loginFail() {
		return "loginFail";
	}

	@RequestMapping("logout")
	public String logout(HttpServletRequest request) {
		try {
			request.logout();
		} catch (ServletException e) {
			e.printStackTrace();
		}
		return "redirect:/login";
	}

	@ResponseBody
	@RequestMapping("reloadResource")
	public String reloadResource(HttpServletRequest request) {
		try {
			esdSourceService.loadResource();
		} catch (Exception e) {
			return e.getMessage();
		}
		return "success";
	}
}
