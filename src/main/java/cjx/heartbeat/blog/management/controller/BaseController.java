package cjx.heartbeat.blog.management.controller;

import cjx.heartbeat.blog.management.utils.ResultUtils;

/**
 * 公用控制层内容
 *
 * @author chenjunxu
 * @date 2017/12/6
 */
public class BaseController {

	private static ResultUtils resultUtils = new ResultUtils();

	public static final String SUCCESS = ResultUtils.SUCCESS;
	public static final String FALSE = ResultUtils.FALSE;
	public static final String ERROR = ResultUtils.ERROR;
	public static final String TRUE = ResultUtils.TRUE;

	public static String Success(String info) {
		return resultUtils.Success(info);
	}

	public static String False(String info) {
		return resultUtils.False(info);
	}

	public static String Error(String info) {
		return resultUtils.Error(info);
	}

	public static String True(String info) {
		return resultUtils.True(info);
	}

}
