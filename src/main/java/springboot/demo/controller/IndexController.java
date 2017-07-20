/**
 * 
 */
package springboot.demo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import springboot.demo.dmo.User;
import springboot.demo.service.UserService;

/**
 * @author jiang
 *
 */
@Controller
public class IndexController {

	@Resource(name = "userService")
	private UserService userService;
	
	@RequestMapping(value = { "index", "/" })
	public String index(ModelMap model) {
		List<User> userList = userService.find(new User());
		model.put("userList", userList);
		return "index";// template目录下页面文件名
	}
}
