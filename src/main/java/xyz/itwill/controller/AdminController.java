package xyz.itwill.controller;

import java.io.File;
import java.io.IOException;
//모든 페이지 관리자 권한 설정
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Faq;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Notice;
import xyz.itwill.dto.Pay;
import xyz.itwill.exception.BoardNotFoundException;
import xyz.itwill.exception.HostNotFoundException;
import xyz.itwill.exception.PayNotFoundException;
import xyz.itwill.exception.SpaceNotFoundException;
import xyz.itwill.service.AdminService;
import xyz.itwill.service.HostService;
import xyz.itwill.service.OrderService;
import xyz.itwill.util.Pager;

@Controller
@RequestMapping("/admin/")
@RequiredArgsConstructor
public class AdminController {
	private final AdminService adminService;
	private final HostService hostService;
	private final WebApplicationContext context;
	private final OrderService orderService;
	
	//관리자페이지의 faq 클릭했을경우 faq전체 리스트 출력
	@RequestMapping(value = "faq")
	public String faq(Model model, @RequestParam int fmstatus,  @RequestParam int fstatus) {
		model.addAttribute("totalFaqCount", adminService.getFaqCount());
		model.addAttribute("fmstatus", fmstatus);
		model.addAttribute("fstatus", fstatus);
		return "admin/admin_faq";
	}
	
	
	
	//faq전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달, 상태별 게시글 필터링
	@RequestMapping(value = "faqList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> faqlist(@RequestParam(defaultValue = "1") int pageNum, @RequestParam int fmstatus,  @RequestParam int fstatus) {
		int totalQuestion=adminService.getFaqCount();
		int pageSize=5;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("fMstatus", fmstatus);
		pageMap.put("fStatus", fstatus);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		if (fmstatus==1 && fstatus==0) {
			List<Faq> faqList=adminService.getstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} else if(fmstatus==0 && fstatus==1) {
			List<Faq> faqList=adminService.getstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} else if(fmstatus==0 && fstatus==0) {
			List<Faq> faqList=adminService.getstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		}  else if(fmstatus==1 && fstatus==1) {
			List<Faq> faqList=adminService.getstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} else if(fmstatus==1 && fstatus==2) {
			List<Faq> faqList=adminService.getorstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} else if(fmstatus==0 && fstatus==2) {
			List<Faq> faqList=adminService.getorstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} else if(fmstatus==2 && fstatus==1) {
			List<Faq> faqList=adminService.getorstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} else if(fmstatus==2 && fstatus==0) {
			List<Faq> faqList=adminService.getorstatusFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		} else {
			List<Faq> faqList=adminService.getFaqList(pageMap);
			resultMap.put("faqList", faqList);			
		}
		
		resultMap.put("pager", pager);
		return resultMap;
	}
	
	
	//게시글 등록 클릭했을경우 faq 등록 페이지로 이동
	@RequestMapping(value = "faq/write", method = RequestMethod.GET)
	public String faqwrite() {
		return "admin/admin_faq_write";
	}
	
	//입력값 작성 후 게시글 등록 클릭했을경우 삽입 후 faq페이지로 이동
	@RequestMapping(value = "faq/write", method = RequestMethod.POST)
	public String faqwrite(@ModelAttribute Faq faq) {
		adminService.addFaq(faq);
		return "redirect:/admin/faq?fmstatus=2&fstatus=2";
	}

	
	//게시글을 전달받아 수정하고 처리결과를 텍스트로 응답
	@RequestMapping(value ="faq/modify/{fno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String faqmodify(@PathVariable int fno, @RequestBody Faq faq) throws BoardNotFoundException {
		Faq modifyfaq=adminService.getFaq(fno);
		modifyfaq.setFTitle(faq.getFTitle());
		modifyfaq.setFContent(faq.getFContent());
		modifyfaq.setFMstatus(faq.getFMstatus());
		modifyfaq.setFStatus(faq.getFStatus());
		adminService.modifyFaq(modifyfaq);
		return "success";
	}

	
	//선택된 게시글을 전달받아 해당 게시글을 삭제 처리
	@RequestMapping(value ="faqremove" , method = RequestMethod.POST)
	@ResponseBody
	public String faqremove(@RequestParam(value = "fno[]") List<Integer> fno) throws BoardNotFoundException {
		for(int i=0; i<fno.size();i++) {
			adminService.removeFaq(fno.get(i));
		}
		return "success";
	}
	
	
	
	//관리자페이지의 공지사항 클릭했을경우 공지사항 리스트 출력
	@RequestMapping(value = "notice")
	public String notice(Model model,  @RequestParam int nmstatus,  @RequestParam int nstatus) {
		model.addAttribute("totalNoticeCount", adminService.getNoticeCount());
		model.addAttribute("nmstatus", nmstatus);
		model.addAttribute("nstatus", nstatus);
		return "admin/admin_notice";
	}
	
	//notice 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달, 상태별 게시글 필터링
	@RequestMapping(value = "noticeList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> noticelist(@RequestParam(defaultValue = "1") int pageNum, @RequestParam int nmstatus,  @RequestParam int nstatus) {
		int totalQuestion=adminService.getNoticeCount();
		int pageSize=10;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("nmstatus", nmstatus);
		pageMap.put("nstatus", nstatus);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		if (nmstatus==1 && nstatus==0) {
			List<Notice> noticeList=adminService.getstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else if(nmstatus==0 && nstatus==1) {
			List<Notice> noticeList=adminService.getstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else if(nmstatus==0 && nstatus==0) {
			List<Notice> noticeList=adminService.getstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		}  else if(nmstatus==1 && nstatus==1) {
			List<Notice> noticeList=adminService.getstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else if(nmstatus==1 && nstatus==2) {
			List<Notice> noticeList=adminService.getorstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else if(nmstatus==0 && nstatus==2) {
			List<Notice> noticeList=adminService.getorstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else if(nmstatus==2 && nstatus==1) {
			List<Notice> noticeList=adminService.getorstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else if(nmstatus==2 && nstatus==0) {
			List<Notice> noticeList=adminService.getorstatusNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else {
			List<Notice> noticeList=adminService.getNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		}
		resultMap.put("pager", pager);
		return resultMap;
	}
	
	
	//공지사항 게시글 작성시 파일 업로드하여 삽입 후 업로드 이름으로 이미지 이름 변경
	@RequestMapping(value = "upload", method = RequestMethod.POST)
	public String upload(@RequestParam MultipartFile uploadFile, Model model, @ModelAttribute Notice notice ) throws IOException, BoardNotFoundException {
		if(uploadFile.isEmpty()) {
			return "admin/upload_fail";
		}
	
		String uploadDirectory=context.getServletContext().getRealPath("/resources/images/notice");
		String originalFilename=uploadFile.getOriginalFilename();
		File file=new File(uploadDirectory, originalFilename);
		String uploadFilename=originalFilename;
		
		int i=0;
		while(file.exists()) {
			i++;
			int index=originalFilename.lastIndexOf(".");
			uploadFilename=originalFilename.substring(0, index)+"_"+i+originalFilename.substring(index);
			file=new File(uploadDirectory, uploadFilename);
		}

		uploadFile.transferTo(file);
		
		model.addAttribute("originalFilename", originalFilename);
		model.addAttribute("uploadFilename", uploadFilename);
		
		adminService.addNotice(notice);
		Notice noticeinfo= adminService.getNotice(notice.getNno());
		noticeinfo.setNimg(uploadFilename);
		adminService.modifyNotice(noticeinfo);
		
		return "redirect:/admin/notice?nmstatus=2&nstatus=2";
	}

	
	//게시글 등록 클릭했을경우 notice 등록 페이지로 이동
	@RequestMapping(value = "notice/write", method = RequestMethod.GET)
	public String noticewrite() {
		return "admin/admin_notice_write";
	}
	
	
	//글번호를 전달받아 해당 글번호의 게시글을 검색하여 출력
	@RequestMapping(value ="notice/view", method = RequestMethod.GET)
	public String noticeView(@RequestParam int nno, Model model) throws BoardNotFoundException {
		model.addAttribute("noticeview", adminService.getNotice(nno));
		return "admin/admin_notice_view";
	}
	
	
	//게시글 변경을 클릭하면 게시글을 변경페이지로 이동
	@RequestMapping(value = "notice/modify", method = RequestMethod.GET)
	public String noticeModify(@RequestParam int nno, Model model) throws BoardNotFoundException {
		model.addAttribute("noticeinfo", adminService.getNotice(nno));
		return "admin/admin_notice_modify";
	}
	
	//게시글 변경 옵션을 변경시킬경우 수정 후 리스트 출력
	@RequestMapping(value ="notice/modifystatus/{nno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String noticemodifystatus(@PathVariable int nno, @RequestBody Notice notice) throws BoardNotFoundException {
		Notice modifynoticestatus=adminService.getNotice(nno);
		modifynoticestatus.setNmstatus(notice.getNmstatus());
		modifynoticestatus.setNstatus(notice.getNstatus());
		adminService.modifyNotice(modifynoticestatus);
		return "success";
	}
	
	//게시글을 전달받아 게시글을 변경하고 처리결과를 일반 텍스트로 응답
	@RequestMapping(value = "notice/modify", method = RequestMethod.POST)
	public String noticeModify(@ModelAttribute Notice notice) throws BoardNotFoundException {
		adminService.modifyNotice(notice);
		return "redirect:/admin/notice/view?nno="+notice.getNno();
	}
	
	
	//선택된 게시글을 전달받아 해당 게시글 삭제 처리
	@RequestMapping(value ="noticeremove" , method = RequestMethod.POST)
	@ResponseBody
	public String noticeremove(@RequestParam(value = "notice[]") List<Integer> nno) throws BoardNotFoundException {
		for(int i=0; i<nno.size();i++) {
			adminService.removeNotice(nno.get(i));
		}
		return "success";
	}
	

	
	//관리자페이지의 host 클릭했을경우 host전체 리스트 출력
	@RequestMapping(value = "host")
	public String host(Model model, @RequestParam int hstatus) {
		model.addAttribute("totalHostCount", hostService.getHostCount());
		model.addAttribute("hstatus", hstatus);
		return "admin/admin_host";
	}
	
	//host전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
	@RequestMapping(value = "hostList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> hostlist(@RequestParam(defaultValue = "1") int pageNum, @RequestParam int hstatus) {
		int totalQuestion=hostService.getHostCount();
		int pageSize=10;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("hStatus", hstatus);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		
		if(hstatus==1) {
			List<Host> hostList=hostService.getHoststatusList(pageMap);
			resultMap.put("hostList",hostList );
		} else if(hstatus==0) {
			List<Host> hostList=hostService.getHoststatusList(pageMap);
			resultMap.put("hostList",hostList );
		} else if(hstatus==9) {
			List<Host> hostList=hostService.getHoststatusList(pageMap);
			resultMap.put("hostList",hostList );	
		} else {
			List<Host> hostList=hostService.getHostList(pageMap);
			resultMap.put("hostList",hostList );
		}
		resultMap.put("pager", pager);
		return resultMap;
	}
	

	//호스트아이디를 전달받아 상태수정하고 처리결과를 텍스트로 응답
	@RequestMapping(value ="host/modifystatus/{hid}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String hostmodify(@PathVariable String hid, @RequestBody Host host) throws HostNotFoundException {
		Host modifyhost=hostService.getHost(hid);
		modifyhost.setHStatus(host.getHStatus());
		hostService.modifyHost(modifyhost);
		return "success";
	}
	
	
	//선택된 호스트아이디를 전달받아 해당 호스트 정보를 삭제 처리
	@RequestMapping(value ="hostremove" , method = RequestMethod.POST)
	@ResponseBody
	public String hostremove(@RequestParam(value = "host[]") List<String> hid) throws HostNotFoundException {
		for(int i=0; i<hid.size();i++) {
			hostService.removehost(hid.get(i));
		}
		return "success";
	}
	
	
	//관리자페이지의 정산하기 클릭했을경우 정산리스트 출력
	@RequestMapping("pay")
	public String pay(Model model, @RequestParam int pwstatus) {
		model.addAttribute("totalnonpayCount", adminService.getnonpayCount());
		model.addAttribute("pwstatus", pwstatus);
		return "admin/admin_pay";
	}
	
	
	//정산리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
	@RequestMapping(value = "payList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> payList(@RequestParam(defaultValue = "1") int pageNum, @RequestParam int pwstatus) throws PayNotFoundException, SpaceNotFoundException {
		int totalQuestion=orderService.getPayCount();
		int pageSize=15;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("pWstatus", pwstatus);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		if(pwstatus==0) {
			List<Pay> payList=adminService.getstatusPayList(pageMap);
			resultMap.put("payList",payList );
		} else if(pwstatus==9) {
			List<Pay> payList=adminService.getstatusPayList(pageMap);
			resultMap.put("payList",payList );
		} else {
			List<Pay> payList=adminService.getadminPayList(pageMap);
			resultMap.put("payList",payList );
		} 
		resultMap.put("pager", pager);
		return resultMap;
	}
	
	
	//결제번호를 전달받아 상태수정하고 처리결과를 텍스트로 응답
	@RequestMapping(value ="pay/modifystatus/{pno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String paymodify(@PathVariable int pno, @RequestBody Pay pay) throws PayNotFoundException {
		Pay modifypay=orderService.getPay(pno);
		modifypay.setPWstatus(pay.getPWstatus());
		adminService.modifyadminPay(modifypay);
		return "success";
	}
	
	
	//해당 게시물을 찾을 수 없을경우 에러페이지로 이동
	@ExceptionHandler(BoardNotFoundException.class)
	public String userinfoExceptionHandler(BoardNotFoundException exception) {
		return "exception/exception_error";
	}
	
	//관리자 인증 실패시 호스트 로그인 페이지로 이동
	@RequestMapping(value = "/login/host",method = RequestMethod.GET)
	public String adminLogin() {
		return "host/host_login";
	}
	
	

}