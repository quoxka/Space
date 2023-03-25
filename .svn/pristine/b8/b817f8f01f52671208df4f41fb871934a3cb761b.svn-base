package xyz.itwill.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import xyz.itwill.dto.Host;

public class HostAuthInterceptor implements HandlerInterceptor  {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		
		Host loginHost=(Host)session.getAttribute("loginHost");
		
		if(loginHost==null || loginHost.getHStatus()!=1) {
			response.sendRedirect("login/host");
			return false;//권한이 없는 경우 요청 처리 메소드 미호출
			//throw new Exception("비정상적인 요청입니다.");
		}
		return true;//권한이 있는 경우 요청 처리 메소드 호출
	}
}
