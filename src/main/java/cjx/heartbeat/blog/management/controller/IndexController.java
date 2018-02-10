package cjx.heartbeat.blog.management.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 首页访问
 *
 * @author chenjunxu
 * @date 2017/12/7
 */
@Controller
public class IndexController {

	/**
	 * 访问后台首页
	 *
	 * @return
	 */
	@RequestMapping("manager/index")
	public String managerIndex(){
		return "manager/index";
	}

	/**
	 * 获取后台首页展示内容
	 *
	 * @return
	 */
	@RequestMapping("manager/index/index")
	public String controlIndex() {
		return "manager/index/index";
	}

	@RequestMapping("manager/index/navCode")
	public String navCode(HttpServletRequest request) {
		String navCode = request.getParameter("code");
		switch (navCode) {
			case "console":
				return "/manager/index/index";
			case "blog":
				return "/manager/blog";
			case "user":
				return "/manager/user";
			default:
				return "/manager/index/index";
		}
	}
}
