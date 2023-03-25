package xyz.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Member;
import xyz.itwill.exception.HostNotFoundException;
import xyz.itwill.exception.MemberNotFoundException;
import xyz.itwill.service.HostService;

@RequestMapping("/host")
@Controller
@RequiredArgsConstructor
public class HostController {
	private final HostService hostService;
	
	//호스트 마이페이지 
	@RequestMapping("/mypage")
	public String mypageView(HttpSession session, Model model) {
		Host loginHost=(Host)session.getAttribute("loginHost");
		model.addAttribute("loginHost", loginHost);
		return "host/host_mypage";
	}
	
	//예약
	
	@RequestMapping("/host_reserve")
	public String practice7() {
		return "host/host_reserve";
	}
	
	//리뷰
	@RequestMapping("/host_review")
	public String practice8() {
		return "host/host_review";
	}
	
	//qna
	@RequestMapping("/host_qna")
	public String practice9() {
		return "host/host_qna";
	}
	
	//faq
	@RequestMapping("/host_faq")
	public String practice10() {
		return "host/host_faq";
	}

	//notice
	@RequestMapping("/host_notice")
	public String practice11() {
		return "host/host_notice";
	}
	
	//notice
	@RequestMapping("/space_manage")
	public String practice12() {
		return "host/space_manage";
	}
	
	//마이페이지 - 변경, 삭제 처리 
	//아이디를 전달받아 MEMBER 테이블에 저장된 해당 아이디의 회원정보를 검색하여 속성값으로 저장하여 변경할 회원정보를 입력받기 위한
	//뷰이름을 반환하는 요청 처리 메소드 	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String hostModify(HttpSession session, Model model) throws HostNotFoundException {
		Host loginHost = (Host)session.getAttribute("loginHost");
		model.addAttribute("loginHost",loginHost);
		return "host/host_modify";
	}
	
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String hostModify(@ModelAttribute Host host, HttpSession session, Model model) throws HostNotFoundException {
		Host loginHost=(Host)session.getAttribute("loginHost");
		model.addAttribute("loginHost", loginHost);
		//host.setHId(loginHost.getHId());
		
		hostService.modifyHost(host);
		
		if(loginHost.getHId().equals(host.getHId())) {
			session.setAttribute("loginHost", hostService.getHost(host.getHId()));
		}
		return "redirect:/host/mypage";
	}
	
	
	
	
	@RequestMapping(value = "/remove")
	public String memberRemove(Model model, HttpSession session
			,Host host) throws HostNotFoundException {
		Host loginHost = (Host)session.getAttribute("loginHost");
		model.addAttribute("loginHost",loginHost);
		host.setHId(loginHost.getHId());
		hostService.deleteHost(loginHost.getHId());
		
		return "redirect:/logout/host";
	}
}
