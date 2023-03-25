package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Member;
import xyz.itwill.exception.ExistsHostException;
import xyz.itwill.exception.ExistsMemberException;
import xyz.itwill.service.HostService;
import xyz.itwill.service.MemberService;

@Controller
@RequiredArgsConstructor
public class JoinController {
	
	private final MemberService memberService;
	private final HostService hostService;
	
	//멤버 회원가입 - 권한없음 , 예외없음
	@RequestMapping(value = "/join/member",method = RequestMethod.GET)
	public String memberJoin() {
		return "member/member_join";
	}
	
	//권한없음, 아이디 중복되면 예외처리
	@RequestMapping(value = "/join/member",method = RequestMethod.POST)
	public String memberJoin(@ModelAttribute Member member) throws ExistsMemberException {
		memberService.addMember(member);
		return "redirect:/login/member";
	}
	
	//호스트 회원가입 - 권한없음, 예외없음
	@RequestMapping(value = "/join/host",method = RequestMethod.GET)
	public String hostJoin() {
		return "host/host_join";
	}
	
	//권한없음, 아이디 중복되면 예외처리
	@RequestMapping(value = "/join/host",method = RequestMethod.POST)
	public String hostJoin(@ModelAttribute Host host) throws ExistsHostException {
		hostService.addHost(host);
		return "redirect:/login/host";
	}
	
	
	
	
	
	
	@ExceptionHandler(value = ExistsMemberException.class)
	public String MemberExceptionHandler(ExistsMemberException exception, Model model) {
		model.addAttribute("message", exception.getMessage()); 
		model.addAttribute("member", exception.getMember());  
		return "member/member_join";
	}
	
	@ExceptionHandler(value = ExistsHostException.class)
	public String HostExceptionHandler(ExistsHostException exception, Model model) {
		model.addAttribute("message", exception.getMessage()); 
		model.addAttribute("host", exception.getHost());  
		return "host/host_join";
	}


}
