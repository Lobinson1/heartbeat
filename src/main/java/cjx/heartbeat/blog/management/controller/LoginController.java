package cjx.heartbeat.blog.management.controller;

import cjx.heartbeat.blog.management.entity.User;
import cjx.heartbeat.blog.management.service.UserService;
import cjx.heartbeat.blog.management.utils.Digests;
import cjx.heartbeat.blog.management.utils.Encodes;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 登录逻辑控制
 *
 * @author chenjunxu
 * @date 2017/8/8
 */
@Controller
@RequestMapping("manager/login")
public class LoginController extends BaseController{

	@Autowired
	private UserService userService;

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(){
		return "manager/login/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(User user, Model model){
		String password = user.getPassword();
		String encodePwd = Encodes.encodeHex(Digests.sha1(password.getBytes()));
		user.setPassword(encodePwd);
		userService.save(user);
		model.addAttribute("user", userService.getByUsername(user.getUsername()));
		return "manager/login/login";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String login(HttpServletRequest request, Model model){
		String path = request.getParameter("server");
		model.addAttribute("server", path);
		return "manager/login/login";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String login(User user, Model model, HttpServletRequest request){
		String username = user.getUsername();
		String password = user.getPassword();
		String encodePwd = Encodes.encodeHex(Digests.sha1(password.getBytes()));
		String path = request.getParameter("server");
		if (userService.checkLogin(username, encodePwd)){
			User u = userService.getByUsername(username);
			HttpSession session = request.getSession();
			session.setAttribute("cjx_user_id", u.getId());
			if (StringUtils.isNotBlank(path)){
				return "redirect:/" + path;
			}else {
				return "redirect:/manager/index";
			}
		}else {
			model.addAttribute("errorMsg", "账号密码有误");
			return "error/loginError";
		}
	}

	@RequestMapping("checkUsername")
	@ResponseBody
	public String checkUsername(HttpServletRequest request){
		String username = request.getParameter("username");
		if (userService.checkUsername(username)){
			return Error("用户名已存在");
		}else {
			return Success("用户名可用");
		}
	}
}
