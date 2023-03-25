package xyz.itwill.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.SpaceDAO;
import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.service.QuestionService;
import xyz.itwill.service.SpaceService;

@Controller
@RequiredArgsConstructor
public class SpaceDetailController2 {	    
    private final SpaceService spaceService;  
    //private final ReviewService reviewService;
    //private final ReviewAnswerService reviewAnswerService;
    //private final QuestionService questionService;
    //private final MemberService memberService;
	 	
		
    /*
    @RequestMapping("/reviews/{sNo}")
    public String spaceReview(Model model, @PathVariable("id") int sNo) {
        Space space = spaceDAO.getSpaceBySNo(sNo);
        List<Review> reviews = reviewDAO.getReviewsBySno(sNo);
        model.addAttribute("space", space);
        model.addAttribute("reviews", reviews);
        return "/space/space_detailpage";
    }
    */  		
	   
    // 상세 페이지 요청 처리
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String showDetailPage() {
	    return "space/space_test";
    }
    
    // 상세 페이지 요청 처리
    @RequestMapping(value = "/spaces", method = RequestMethod.GET)
    public String showDetailPage2(@RequestParam(defaultValue = "1")int sNo,Model model) {
    	Space spaces = spaceService.getSpaceBySnoTest(sNo);
    	model.addAttribute("spaces",spaces);
	    return "space/space_detailpage2";
    }
    
 
	
    
    //호스트의 다른 공간
    @RequestMapping(value = "/spaces/{sNo}", method = RequestMethod.GET)
	public String relatedSpaces(@RequestParam("sNo") int sNo,Model model, String hId) {
    	List<SpaceHost> spaceHostList = spaceService.getSpaceHost(hId, sNo);
		model.addAttribute("spaceHostList", spaceHostList);
		return "space/space_detailpage2";
	}
	    

	    
	    /*
	    //사용자가 + - 버튼을 클릭하여 예약하기 버튼을 눌렀을때 받는 예약인원수
	    @RequestMapping(value="/spaces", method=RequestMethod.POST)
	    public String submitSpacePerson(@RequestParam("guests") int guests, Model model) {
	      // 예약 인원 수를 이용하여 예약 정보를 저장하고, 주문 페이지로 이동합니다.
	      return "/space/space_detailpage";
	    }

	    
	    //QnA 관련 Controller
		
		@RequestMapping("/ques")
		public String Questions() {
			return "space/space_detailpage";
		}
		
		//페이지 번호를 전달받아 RESTBOARD 테이블에 저장된 게시글 목록 중 해당 페이지 번호의 범위에
		//게시글 목록을 검색하여 JSON 형식의 데이타로 응답하는 요청 처리 메소드
		// => 게시글 목록을 페이징 처리하여 출력하기 위해 요청 페이지 번호의 게시글 목록과 페이지 
		//번호 출력 관련 값이 저장된 객체를 Map 객체의 엔트리로 저장하여 JSON 형식의 데이타로 응답
		//처리되도록 반환
		@RequestMapping(value="/space_list", method = RequestMethod.GET)
		@ResponseBody
		public Map<String, Object> questionList(@RequestParam(defaultValue = "1") int pageNum) {
			//System.out.println("pageNum = "+pageNum);
			
			//RESTBOARD 테이블에 저장된 모든 게시글의 갯수를 반환하는 메소드 호출
			int totalQuestion=questionService.getQuestionCount();
			int pageSize=5;//하나의 페이지에 출력될 게시글의 갯수 저장
			int blockSize=5;//하나의 블럭에 출력될 페이지 번호의 갯수 저장
			
			//페이징 처리 관련 값이 필드에 저장된 Pager 객체 생성 
			Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
			
			
			
			
			//RestBoardService 클래스의 getRestBoardList() 메소드를 호출하기 위해 Map 객체 생성
			// => Map 객체에는 요청 페이지의 시작 행번호와 종료 행번호를 엔트리로 저장하여 SQL 명령에서 사용
			Map<String, Object> pageMap=new HashMap<String, Object>();
			pageMap.put("startRow", pager.getStartRow());
			pageMap.put("endRow", pager.getEndRow());
			//요청 페이지 번호에 대한 게시글 목록을 List 객체로 반환받아 저장
			List<Question> questionList=questionService.getQuestionList(pageMap);
			
			//처리결과를 저장하여 반환하기 위한 Map 객체 생성 
			// => Map 객체에는 게시글 목록(List 객체)과 페이징 처리 관련 값이 저장된 객체(Pager 객체)를 엔트리로 저장
			Map<String, Object> resultMap=new HashMap<String, Object>();
			resultMap.put("questionList", questionList);
			resultMap.put("pager", pager);
			
			return resultMap;//Map 객체를 반환하여 JSON 형식의 데이타로 응답
		}
		
		//게시글을 전달받아 RESTBOARD 테이블에 삽입하고 처리결과를 일반 텍스트로 응답하는 요청 처리 메소드
		// => [application/json] 형식으로 전달된 값을 Java 객체로 제공받기 위해 매개변수에 @RequestBody 어노테이션 사용
		@RequestMapping(value="/space_add", method = RequestMethod.POST)
		@ResponseBody
		public String restBoardAdd(@RequestBody Question question) {
			//HtmlUtils.htmlEscape(String str) : 전달받은 문자열에서 HTML 태그 관련 문자를 회피
			//문자(Escape Character)로 변환하여 반환하는 메소드 - XSS 공격에 대한 방어
			question.setQContent(HtmlUtils.htmlEscape(question.getQContent()));
			questionService.addQuestion(question);
			return "success";
		}
		
		//글번호를 전달받아 RESTBOARD 테이블에 저장된 해당 글번호의 게시글을 검색하여 JSON 형식의
		//텍스트 데이타로 응답하는 요청 처리 메소드
		@RequestMapping(value="/space_view", method = RequestMethod.GET)
		@ResponseBody
		public Question questionView(@RequestParam int num) {
			return questionService.getQuestion(num);
		}
		
		//게시글을 전달받아 RESTBOARD 테이블에 저장된 해당 게시글을 변경하고 처리결과를 일반
		//텍스트로 응답하기 위한 요청 처리 메소드
		// => 페이지 요청 방식을 여러개로 설정할 경우 @RequestMapping 어노테이션의 method 속성값으로 배열 사용 가능
		@RequestMapping(value="/space_modify", method = {RequestMethod.PUT, RequestMethod.PATCH})
		@ResponseBody
		public String QuestionModify(@RequestBody Question question) {
			questionService.modifyQuestion(question);
			return "success";
		}
		
		//요청 URL 주소의 글번호를 전달받아 RESTBOARD 테이블에 저장된 해당 글번호의 게시글을 
		//삭제하고 처리결과를 일반 텍스트로 응답하기 위한 요청 처리 메소드
		// => 요청 URL 주소를 사용하여 전달된 값은 @RequestMapping 어노테이션의 value 속성값에서
		//{이름} 형식으로 표현 가능 - @PathVariable 어노테이션을 사용하여 전달값을 매개변수에 저장
		//@PathVariable : URL 주소로 제공된 값을 요청 처리 메소드의 매개변수에 저장하기 위한 어노테이션
		// => 요청 URL 주소의 표현된 이름과 매개변수의 이름이 반드시 같아야만 매개변수에 값 저장 가능
		// => @PathVariable 어노테이션에 value 속성값을 사용하여 요청 URL 주소에서 표현된 이름으로
		//제공된 값을 얻어와 매개변수에 저장 가능
		@RequestMapping(value="/space_remove/{num}", method = RequestMethod.DELETE)
		@ResponseBody
		public String restBoardRemove(@PathVariable int num) {
			questionService.removeQuestion(num);
			return "success";
		}
		*/
		
		
	}

