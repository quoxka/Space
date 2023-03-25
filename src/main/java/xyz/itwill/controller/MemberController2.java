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
import xyz.itwill.dao.FilterDAO;
import xyz.itwill.dto.Faq;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Member;
import xyz.itwill.dto.Notice;
import xyz.itwill.dto.Review;
import xyz.itwill.dto.SelectMember;
import xyz.itwill.dto.Space;
import xyz.itwill.exception.BoardNotFoundException;
import xyz.itwill.exception.MemberNotFoundException;
import xyz.itwill.exception.SpaceNotFoundException;
import xyz.itwill.service.MemberService;
import xyz.itwill.service.ReviewService;
import xyz.itwill.util.Pager;


@Controller
@RequiredArgsConstructor
public class MemberController2 {
	
	private final ReviewService reviewService;
	private final FilterDAO filterDAO;	
	
	
		//member write,update,delete 처리.
			@RequestMapping(value="/member_review_write", method = RequestMethod.GET)
			public String find2(HttpSession session,Model model)  {
				Member loginMember = (Member)session.getAttribute("loginMember");
				model.addAttribute("mId",loginMember.getMId());
				return "member/member_review_write";
			}
		
		//입력값 작성 후 게시글 등록 클릭했을경우 삽입 후 notice페이지로 이동
			@RequestMapping(value = "member_review_write", method = RequestMethod.POST)
			public String noticewrite(@ModelAttribute Review review) {
				reviewService.addReview(review);
				return "redirect:/member_review";
			}
	
			
			//선택된 게시글을 전달받아 해당 게시글을 삭제 처리
			@RequestMapping(value ="member_review_delete/{rNo}" , method = RequestMethod.DELETE)
			@ResponseBody
			public String faqremove(@PathVariable int rNo) throws BoardNotFoundException {
				reviewService.removeReview(rNo);
				return "success";
			}
			
				
					//notice 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
					
					@RequestMapping(value = "member_reviewList", method = RequestMethod.GET)
					@ResponseBody
					public Map<String, Object> ReviewList(@RequestParam(defaultValue = "1") int pageNum,HttpSession session) {
						Member loginMember=(Member)session.getAttribute("loginMember");
						int totalQuestion=reviewService.getReviewCount(loginMember.getMId());
						int pageSize=6;
						int blockSize=5;
						
						Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
						
						Map<String, Object> pageMap=new HashMap<String, Object>();
						pageMap.put("startRow", pager.getStartRow());
						pageMap.put("endRow", pager.getEndRow());
						
						List<SelectMember> reviewList=reviewService.getReviewList(pageMap);
						
						Map<String, Object> resultMap=new HashMap<String, Object>();
						resultMap.put("reviewList", reviewList);
						resultMap.put("pager", pager);
						return resultMap;
					}	
					
					
					
					//notice 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
					
					@RequestMapping(value = "member_reserveList", method = RequestMethod.GET)
					@ResponseBody
					public Map<String, Object> ReserveList(@RequestParam(defaultValue = "1") int pageNum,HttpSession session) {
						Member loginMember=(Member)session.getAttribute("loginMember");
						int totalQuestion=reviewService.getReserveCount(loginMember.getMId());
						int pageSize=6;
						int blockSize=5;
						
						Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
						
						Map<String, Object> pageMap=new HashMap<String, Object>();
						pageMap.put("startRow", pager.getStartRow());
						pageMap.put("endRow", pager.getEndRow());
						
						List<SelectMember> reserveList=reviewService.getReserveList(pageMap);
						
						Map<String, Object> resultMap=new HashMap<String, Object>();
						resultMap.put("reserveList", reserveList);
						resultMap.put("pager", pager);
						return resultMap;
					}	
					
					//space 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
					@RequestMapping(value = "member_spaceList", method = RequestMethod.GET)
					@ResponseBody
					public Map<String, Object> SpaceList(@RequestParam(defaultValue = "1") int pageNum) {
						int totalQuestion=filterDAO.selectSpaceCount();
						int pageSize=6;
						int blockSize=5;
						
						Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
						
						Map<String, Object> pageMap=new HashMap<String, Object>();
						pageMap.put("startRow", pager.getStartRow());
						pageMap.put("endRow", pager.getEndRow());
						
						List<Space> spaceList=filterDAO.selectSpaceList(pageMap);
						
						Map<String, Object> resultMap=new HashMap<String, Object>();
						resultMap.put("spaceList", spaceList);
						resultMap.put("pager", pager);
						return resultMap;
					}	
					
					
					//notice 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
					
					@RequestMapping(value = "member_questionList", method = RequestMethod.GET)
					@ResponseBody
					public Map<String, Object> QuestionList(@RequestParam(defaultValue = "1") int pageNum,HttpSession session) {
						Member loginMember=(Member)session.getAttribute("loginMember");
						int totalQuestion=reviewService.getQuestionCount(loginMember.getMId());
						int pageSize=6;
						int blockSize=5;
						
						Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
						
						Map<String, Object> pageMap=new HashMap<String, Object>();
						pageMap.put("startRow", pager.getStartRow());
						pageMap.put("endRow", pager.getEndRow());
						
						List<SelectMember> questionList=reviewService.getQuestionList(pageMap);
						
						Map<String, Object> resultMap=new HashMap<String, Object>();
						resultMap.put("questionList", questionList);
						resultMap.put("pager", pager);
						return resultMap;
					}	
					
					
					
					//notice 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
					
					@RequestMapping(value = "host_reviewList", method = RequestMethod.GET)
					@ResponseBody
					public Map<String, Object> ReviewList2(@RequestParam(defaultValue = "1") int pageNum) {
					
						int totalQuestion=reviewService.getHostReviewCount();
						int pageSize=6;
						int blockSize=5;
						
						Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
						
						Map<String, Object> pageMap=new HashMap<String, Object>();
						pageMap.put("startRow", pager.getStartRow());
						pageMap.put("endRow", pager.getEndRow());
						
						List<SelectMember> reviewList=reviewService.getHostReviewList(pageMap);
						
						Map<String, Object> resultMap=new HashMap<String, Object>();
						resultMap.put("reviewList", reviewList);
						resultMap.put("pager", pager);
						return resultMap;
					}	
					
					
					//notice 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
					
					@RequestMapping(value = "host_reserveList", method = RequestMethod.GET)
					@ResponseBody
					public Map<String, Object> ReserveList2(@RequestParam(defaultValue = "1") int pageNum) {
						
						int totalQuestion=reviewService.getHostReserveCount();
						int pageSize=6;
						int blockSize=5;
						
						Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
						
						Map<String, Object> pageMap=new HashMap<String, Object>();
						pageMap.put("startRow", pager.getStartRow());
						pageMap.put("endRow", pager.getEndRow());
						
						List<SelectMember> reserveList=reviewService.getHostReserveList(pageMap);
						
						Map<String, Object> resultMap=new HashMap<String, Object>();
						resultMap.put("reserveList", reserveList);
						resultMap.put("pager", pager);
						return resultMap;
					}	
					
					
					//notice 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
					
					@RequestMapping(value = "host_questionList", method = RequestMethod.GET)
					@ResponseBody
					public Map<String, Object> QuestionList2(@RequestParam(defaultValue = "1") int pageNum) {
						
						int totalQuestion=reviewService.getHostReviewCount();
						int pageSize=6;
						int blockSize=5;
						
						Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
						
						Map<String, Object> pageMap=new HashMap<String, Object>();
						pageMap.put("startRow", pager.getStartRow());
						pageMap.put("endRow", pager.getEndRow());
						
						List<SelectMember> questionList=reviewService.getHostQuestionList(pageMap);
						
						Map<String, Object> resultMap=new HashMap<String, Object>();
						resultMap.put("questionList", questionList);
						resultMap.put("pager", pager);
						return resultMap;
					}	
					
				
}
