package cjx.heartbeat.blog.handler;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static cjx.heartbeat.blog.management.entity.User.USER_SESSION;

/**
 * 登录拦截
 *
 * @author chenjunxu
 * @date 2018/7/30
 */
public class LoginHandler implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//		return true;
		HttpSession session = request.getSession();
		Object user = session.getAttribute(USER_SESSION);
		if (user == null) {
			response.sendRedirect("/manager/login/login");
//			response.setStatus(200);
//			response.setCharacterEncoding("UTF-8");
//			PrintWriter pw = null;
//			try {
//				pw = response.getWriter();
//				JSONObject object = new JSONObject();
//				object.put("state", "false");
//				object.put("msg", "未登录");
//				object.put("result", "请登录后访问");
//				pw.append(object.toJSONString());
//				pw.flush();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}finally {
//				if (pw != null) {
//					pw.close();
//				}
//			}
			return false;
		} else {
			return true;
		}
	}
}
