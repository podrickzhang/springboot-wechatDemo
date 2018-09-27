package com.imooc.demo.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 统一异常处理类
 * 
 * @author xiangze
 *
 */
@ControllerAdvice
public class GlobalExceptionHandler {

	//异常处理，当程序中有抛出Exception这个类时（包括了RuntimeException），就会进行下面的处理
	@ExceptionHandler(value = Exception.class)
	@ResponseBody
	public Map<String, Object> exceptionHandler(HttpServletRequest req, Exception e) throws Exception {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		modelMap.put("success", false);
		modelMap.put("errMsg", e.getMessage());
		return modelMap;
	}

}