package xyz.itwill.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	//회원 메인 페이지 요청 처리 메소드
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	
	//관리자 메인 페이지 요청 처리 메소드
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	//호스트 메인 페이지 요청 처리 메소드
	@RequestMapping("/host")
	public String host() {
		return "host";
	}

	//메인 필터 페이지
	@RequestMapping("/filter")
	public String practice() {
		return "main/main_filter";
	}
}