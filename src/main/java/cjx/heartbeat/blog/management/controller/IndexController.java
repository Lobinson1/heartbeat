package cjx.heartbeat.blog.management.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/12/7
 */
@Controller
public class IndexController {

	@RequestMapping("index")
	public String index(){
		return "index";
	}

	@RequestMapping("manager/index")
	public String managerIndex(){
		return "manager/index";
	}

	@RequestMapping("manager/index/index")
	public String controlIndex() {
		return "manager/index/index";
	}
}
