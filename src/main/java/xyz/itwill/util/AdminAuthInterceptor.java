package xyz.itwill.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import xyz.itwill.dto.Host;

public class AdminAuthInterceptor implements HandlerInterceptor  {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		
		Host loginHost=(Host)session.getAttribute("loginHost");
		
		if(loginHost==null || loginHost.getHStatus()!=9) {
			response.sendRedirect("login/host");
			return false;
		}
		return true;//권한이 있는 경우 요청 처리 메소드 호출
	}
}
