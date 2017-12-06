package cjx.heartbeat.blog.management.utils;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/9/30
 */
public class ResultUtils {

	public static final String SUCCESS = "success";
	public static final String ERROR = "error";
	public static final String TRUE = "TRUE";
	public static final String FALSE = "false";

	public String getResult(int code, String result, String msg){
		return "{\"code\":"+code+",\"result\":"+result+",\"msg\":"+msg+"}";
	}

	public String Success(String msg){
		return getResult(200, SUCCESS, msg);
	}

	public String Error(String msg){
		return getResult(500, ERROR, msg);
	}

	public String True(String msg){
		return getResult(200, TRUE, msg);
	}

	public String False(String msg){
		return getResult(500, FALSE, msg);
	}

}
