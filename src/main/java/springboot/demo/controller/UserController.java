/**
 * 
 */
package springboot.demo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springboot.demo.dmo.User;
import springboot.demo.service.UserService;

/**
 * @author jiang
 *
 */
@Controller
@RequestMapping("user")
public class UserController {

	@Resource(name = "userService")
	private UserService userService;
	
	@RequestMapping(value="/maintain/{id}/{type}",method=RequestMethod.GET)
	public String maintain(@PathVariable("id") String id, @PathVariable("type") String type, ModelMap model) {
		if(!StringUtils.isEmpty(id) && !"0".equals(id)){
			User user = userService.findById(id);
			model.put("user", user);
		}
		model.put("type", type);
		return "maintain";
	}
	
	@RequestMapping(value="/save/{type}",method=RequestMethod.POST)
	public String save(@PathVariable("type") String type, User user) {
		if("edit".equals(type)){
			userService.update(user);
		}else{
			userService.insert(user);
		}
		return "redirect:/index";
	}
}
