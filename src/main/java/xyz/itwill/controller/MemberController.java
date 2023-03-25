package xyz.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Faq;
import xyz.itwill.dto.Heart;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Member;
import xyz.itwill.dto.Notice;
import xyz.itwill.dto.Review;
import xyz.itwill.dto.Space;
import xyz.itwill.exception.BoardNotFoundException;
import xyz.itwill.exception.MemberNotFoundException;
import xyz.itwill.exception.SpaceNotFoundException;
import xyz.itwill.service.MemberService;
import xyz.itwill.service.ReviewService;
import xyz.itwill.service.SpaceManageService;
import xyz.itwill.util.Pager;


@Controller
@RequiredArgsConstructor
public class MemberController {
	
	
	
	private final MemberService memberService;
	private final SpaceManageService spaceManageService;
	
	
	//member 예약
	@RequestMapping("/member_reserve")
	public String reserve() {
		return "member/member_reserve";
	}
	
	//member 리뷰
	@RequestMapping("/member_review")
	public String review() {
		return "member/member_review";
	}
	
		
	//member 질의응답
	@RequestMapping("/member_qna")
	public String qna() {
		return "member/member_qna";
	}
	
	//member FAQ
	@RequestMapping("/member_faq")
	public String faq(@RequestParam int fmstatus,  @RequestParam int fstatus, Model model) {
		model.addAttribute("fmstatus", fmstatus);
		model.addAttribute("fstatus", fstatus);
		return "board/faq";
	}
	//member 공지사항
	@RequestMapping("/member_notice")
	public String notice(@RequestParam int nmstatus,  @RequestParam int nstatus, Model model) {
		model.addAttribute("nmstatus", nmstatus);
		model.addAttribute("nstatus", nstatus);
		return "board/notice";
	}
	
	//host FAQ
	@RequestMapping("/host_faq")
	public String hostfaq(@RequestParam int fmstatus,  @RequestParam int fstatus, Model model) {
		model.addAttribute("fmstatus", fmstatus);
		model.addAttribute("fstatus", fstatus);
		return "board/faq_host";
	}
	//host 공지사항
	@RequestMapping("/host_notice")
	public String hostnotice(@RequestParam int nmstatus,  @RequestParam int nstatus, Model model) {
		model.addAttribute("nmstatus", nmstatus);
		model.addAttribute("nstatus", nstatus);
		return "board/notice_host";
	}
	
	//member 비밀번호찾기
	@RequestMapping(value="/member_find",method = RequestMethod.GET )
	public String find() {
		return "member/member_find";
	}
	
	//member 아이디, 비밀번호찾기(10자리 숫자 랜덤배열)
	@RequestMapping(value="/member_find", method = RequestMethod.POST)
	public String find(@ModelAttribute Member member,Model model) {
	    try {
	    	Member FoundMember=memberService.getEmailMember(member.getMEmail());
	        memberService.pwModifyMember(member);
	        model.addAttribute("mId",FoundMember.getMId());
	        model.addAttribute("mPw",member.getMPw());
	        model.addAttribute("mStatus",FoundMember.getMStatus());
	        return "member/member_find_result";
	    } catch (MemberNotFoundException e) {
	        model.addAttribute("errorMessage", e.getMessage());
	        
	        return "member/member_find"; 
	    }
	}
	
	//member 비밀번호찾기 후 DB솔트처리.
	@RequestMapping(value="/member_find_end" )
	public String find2(@ModelAttribute Member member) throws MemberNotFoundException {
	
		memberService.pwModifyMember2(member);
	
		return "home";
	}
	
	//찜리스트  
	
	//공간 상세페이지에서 찜을 누른 경우 -> 찜테이블 컬럼 삽입 
	@RequestMapping(value = "/member_heart", method = RequestMethod.POST)
	public String detailHeart(@ModelAttribute Heart heart,@RequestParam int sNo,HttpSession session,Model model) {
		Member loginMember=(Member)session.getAttribute("loginMember");
				
		memberService.addHeart(heart);
		heart.setHSid(sNo);
		heart.setHMid(loginMember.getMId());
		
		return "member/heart_list";
	}
	
	//로그인 사용자가 찜한 모든 공간을 검색하여 속성값으로 저장하여 공간목록을 출력하는 뷰이름을 반환하는 요청 처리 메소드
	//=> 비로그인 사용자가 페이지를 요청할 경우 권한 관련 인터셉터를 이용하여 처리
	@RequestMapping("/member_heart")
	public String heartList() {
		
		return "member/heart_list";
	}
	
	//페이징 처리 관련 요청 처리 메소드 
	//=> 찜리스트 클릭했을 경우 
	@RequestMapping(value = "/heartList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> heartList(@RequestParam(defaultValue = "1") int pageNum
			, HttpSession session, Heart heart) throws SpaceNotFoundException {
		
		Member loginMember=(Member)session.getAttribute("loginMember");
		
		int totalheartList=memberService.getHeartCount(loginMember.getMId());   
		int pageSize=6;
		int blockSize=3;
		Pager pager=new Pager(pageNum, totalheartList, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("hMid", loginMember.getMId()); //사용자 아이디 
		pageMap.put("hSid", heart.getHSid()); //공간 번호 
		
		List<Heart> heartList=memberService.getHeartPaging(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("heartList", heartList);
		resultMap.put("pager", pager);
		return resultMap;
	}
	
	
	
	//member 마이페이지 
	
	@RequestMapping("/member_mypage")
	public String mypageView(HttpSession session, Model model) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		model.addAttribute("loginMember", loginMember);
		
		return "member/member_mypage";
	}
	
	//마이페이지 - 변경, 삭제 처리 
	//아이디를 전달받아 MEMBER 테이블에 저장된 해당 아이디의 회원정보를 검색하여 속성값으로 저장하여 변경할 회원정보를 입력받기 위한
	//뷰이름을 반환하는 요청 처리 메소드 
	@RequestMapping(value = "/member_modify", method = RequestMethod.GET)
	public String memberModify(HttpSession session, Model model) throws MemberNotFoundException {
		Member loginMember=(Member)session.getAttribute("loginMember");
		model.addAttribute("loginHost", loginMember);
		return "member/member_modify";
	}
	
	@RequestMapping(value = "/member_modify", method = RequestMethod.POST)
	public String memberModify(@ModelAttribute Member member, HttpSession session, Model model) throws MemberNotFoundException {
		Member loginMember=(Member)session.getAttribute("loginMember");
		model.addAttribute("loginHost", loginMember);
		member.setMId(loginMember.getMId());
		
		//아이디 전달이 제대로 안됨 
		
		memberService.modifyMember(member);
		
		if(loginMember.getMId().equals(member.getMId())) {
			session.setAttribute("loginMember", memberService.getMember(member.getMId()));
		}
		return "redirect:/member_mypage";
	}
	
	@RequestMapping(value = "/member_remove")
	public String memberRemove(Model model, HttpSession session, Member member) throws MemberNotFoundException {
		Member loginMember=(Member)session.getAttribute("loginMember");
		model.addAttribute("loginMember", loginMember);
		member.setMId(loginMember.getMId());
		memberService.deleteMember(loginMember.getMId());
		
		return "redirect:/logout/member";
	}
}
