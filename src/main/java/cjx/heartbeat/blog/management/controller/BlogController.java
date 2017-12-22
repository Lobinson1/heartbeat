package cjx.heartbeat.blog.management.controller;

import cjx.heartbeat.blog.management.entity.Blog;
import cjx.heartbeat.blog.management.service.BlogService;
import cjx.heartbeat.blog.management.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/10/16
 */
@Controller
@RequestMapping("manager/blog")
public class BlogController extends BaseController {

	private final BlogService blogService;
	private final TypeService typeService;

	@Autowired
	public BlogController(BlogService blogService, TypeService typeService) {
		this.blogService = blogService;
		this.typeService = typeService;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String blog(){
		return "manager/blog/list";
	}

	@RequestMapping("list")
	@ResponseBody
	public String list(){
		List<Blog> blogs = blogService.getAll();
		return getLayUIData(blogs);
	}

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(Model model){
		model.addAttribute("blogType", typeService.getAll());
		return "manager/blog/insert";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	@ResponseBody
	public String insert(HttpServletRequest request, Blog blog){
		if (blogService.save(blog) == null){
			return Error("创建新博失败");
		}
		return Success("创建成功");
	}

	@RequestMapping("checkTitle/{title}")
	public String checkTitle(@PathVariable String title){
		return blogService.checkTitle(title) ? Success("标题可用") : False("标题已存在");
	}
}
