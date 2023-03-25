package xyz.itwill.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;

@Controller
public class ExceptionController {
	private static final Logger logger=LoggerFactory.getLogger(ExceptionController.class);
	
	@ExceptionHandler(value = Exception.class)
	public String userinfoExceptionHandler(Exception exception) {
		exception.printStackTrace();
		logger.error(exception.getMessage());
		return "exception/exception_error";
	}
}