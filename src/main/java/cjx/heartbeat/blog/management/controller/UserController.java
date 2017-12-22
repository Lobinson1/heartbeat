package cjx.heartbeat.blog.management.controller;

import cjx.heartbeat.blog.management.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 用户控制层  目前无用
 *
 * @author chenjunxu
 * @date 2017/7/19
 */
@Controller
@RequestMapping("user")
public class UserController {

	@Resource
	private UserService userService;

}
