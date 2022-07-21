package me.light.common;

import org.springframework.beans.TypeMismatchException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import me.light.exception.NotMatchUserIdException;

@ControllerAdvice
public class CommonExceptionHandler {
	
	@ExceptionHandler(TypeMismatchException.class)
	@ResponseStatus(code = HttpStatus.BAD_REQUEST)
	public String badRequestHandle(TypeMismatchException exception) {
		return "error/400";
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(code = HttpStatus.NOT_FOUND)
	public String notFoundPage(NoHandlerFoundException exception) {
		return "error/404";
	}
	
	@ExceptionHandler(NotMatchUserIdException.class)
	public String notMatchUserId() {
		return "member/myPage_error";
	}

}
