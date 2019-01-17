package cjx.heartbeat.blog.management.controller;

import cjx.heartbeat.blog.management.entity.Blog;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 首页访问
 *
 * @author chenjunxu
 * @date 2017/12/7
 */
@Controller
public class IndexController {

	/**
	 * 获取后台首页展示内容
	 *
	 * @return
	 */
	@RequestMapping("manager/index/index")
	public String controlIndex() {
		return "manager/indexpage/indexpage";
	}

	@RequestMapping("manager/index/navCode")
	public String navCode(HttpServletRequest request) {
		String navCode = request.getParameter("code");
		switch (navCode) {
			case "console":
				return "/manager/indexpage/indexpage";
			case "blog":
				return "/manager/blog";
			case "user":
				return "/manager/user";
			default:
				return "/manager/indexpage/indexpage";
		}
	}
}
