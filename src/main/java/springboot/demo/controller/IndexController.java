/**
 * 
 */
package springboot.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author jiang
 *
 */
@Controller
public class IndexController {

	@RequestMapping(value = { "index", "/" })
	public String index() {
		return "index";
	}
}
