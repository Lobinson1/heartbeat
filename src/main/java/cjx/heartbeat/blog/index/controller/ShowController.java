package cjx.heartbeat.blog.index.controller;

import cjx.heartbeat.blog.management.entity.Blog;
import cjx.heartbeat.blog.management.service.BlogService;
import cjx.heartbeat.blog.management.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/12/25
 */
@Controller
public class ShowController {

	private final BlogService blogService;
	private final TypeService typeService;

	@Autowired
	public ShowController(BlogService blogService, TypeService typeService) {
		this.blogService = blogService;
		this.typeService = typeService;
	}

	/**
	 * 访问网站首页
	 *
	 * @return
	 */
	@RequestMapping("/")
	public String index(Model model){
		List<Blog> tops = blogService.getTopList();
		List<Blog> news = blogService.getNewList(4);

		model.addAttribute("tops", tops);
		model.addAttribute("news", news);
		model.addAttribute("action", "indexpage");

		return "index";
	}

	@RequestMapping("/loving")
	public String heart() {
		return "heart";
	}

	@RequestMapping("/blog/{id}")
	public String detail(@PathVariable String id, Model model){
		Blog blog = blogService.getById(Integer.valueOf(id));
		model.addAttribute("blog", blog);
		model.addAttribute("blogType", typeService.getById(blog.getType()).getTypeName());
		model.addAttribute("author", "lobinson");
		model.addAttribute("action", "");
		return "show/detail";
	}

}
