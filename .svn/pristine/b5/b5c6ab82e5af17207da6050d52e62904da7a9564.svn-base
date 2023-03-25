package xyz.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Faq;
import xyz.itwill.dto.Notice;
import xyz.itwill.exception.BoardNotFoundException;
import xyz.itwill.service.AdminService;
import xyz.itwill.util.Pager;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class BoardController {
	private final AdminService boardService;
	
	
	//faq전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
	@RequestMapping(value = "member_faqList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> faqlist(@RequestParam(defaultValue = "1") int pageNum, @RequestParam int fmstatus,  @RequestParam int fstatus) {
		int totalFaqList=boardService.getFaqCount();
		int pageSize=15;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalFaqList, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("fMstatus", fmstatus);
		pageMap.put("fStatus", fstatus);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		if (fmstatus==1 && fstatus==1) {
			List<Faq> faqList=boardService.getstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} else if(fmstatus==0 && fstatus==1) {
			List<Faq> faqList=boardService.getstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} 
		
		resultMap.put("pager", pager);
		return resultMap;
	}
	
	
	//notice전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
	@RequestMapping(value = "member_noticeList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> noticelist(@RequestParam(defaultValue = "1") int pageNum, @RequestParam int nmstatus,  @RequestParam int nstatus) {
		int totalNoticeList=boardService.getNoticeCount();
		int pageSize=10;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalNoticeList, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("nmstatus", nmstatus);
		pageMap.put("nstatus", nstatus);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();

		if (nmstatus==1 && nstatus==1) {
			List<Notice> noticeList=boardService.getstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else if (nmstatus==0 && nstatus==1) {
			List<Notice> noticeList=boardService.getstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		}
		resultMap.put("pager", pager);
		return resultMap;
	}
	

	
	//글번호를 전달받아 해당 글번호의 게시글을 검색하여 출력
	@RequestMapping(value ="member_notice/view", method = RequestMethod.GET)
	public String noticeView(@RequestParam int nno, Model model) throws BoardNotFoundException {
		model.addAttribute("noticeview", boardService.getNotice(nno));
		return "board/notice_view";
	}
}
