package xyz.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.swing.AbstractListModel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.HostSpacePay;
import xyz.itwill.dto.Pay;
import xyz.itwill.exception.BoardNotFoundException;
import xyz.itwill.exception.HostNotFoundException;
import xyz.itwill.exception.PayNotFoundException;
import xyz.itwill.service.OrderService;
import xyz.itwill.util.Pager;
//호스트 정산예정내역, 호스트 정산완료내역 페이지 요청 처리 메소드
@Controller
@RequiredArgsConstructor
public class AccountController {
	private final OrderService orderService;	
		
	//페이지 출력
	@RequestMapping(value = "/host/host_account", method = RequestMethod.GET)
	public String accountDisplay(HttpSession session, Model model) {
		Host loginHost = (Host)session.getAttribute("loginHost");
		int totalPayCount=orderService.getHostPayCount(loginHost.getHId());
		model.addAttribute("totalPayCount", totalPayCount);
		model.addAttribute("loginHost", loginHost);
		
		return "host/host_account";
	}
	
	
	//세션에 저장된 host 아이디를 전달받아 order 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
	@RequestMapping(value = "/host/account_List", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> accountList(@RequestParam(defaultValue = "1") int pageNum, HttpSession session) {
		Host loginHost=(Host)session.getAttribute("loginHost");
		String hId=loginHost.getHId();
		int totalHostOrder=orderService.getHostPayCount(hId);
		int pageSize=6;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalHostOrder, pageSize, blockSize);
		System.out.println(hId);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("startRow", pager.getStartRow());
		map.put("endRow", pager.getEndRow());
		map.put("hId", hId);
		
		List<HostSpacePay> hostSpacePayList=orderService.getHostSpaceListPayListByRow(map);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("hostSpacePayList", hostSpacePayList);
		resultMap.put("pager", pager);
		return resultMap;
	}
	
	
	
	//결제번호를 전달받아 상태를 변경(호스트정산완료 처리)하고 처리결과를 텍스트로 응답
	@RequestMapping(value ="/host/account_List/{pno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String accountModify(@PathVariable int pno) throws PayNotFoundException {
		Pay pay=orderService.getPay(pno);
		if(pay.getPWstatus()==0) {
			pay.setPWstatus(1);
		}
		if(pay.getPWstatus()==1) {
			pay.setPWstatus(0);
		}
		//modifyPay.set(host.getHStatus());
		//hostService.modifyHost(modifyhost);
		return "success";
	}
	
	
	@RequestMapping(value = "/host/host_account", method = RequestMethod.POST)
	public String accountDisplay2() {
		return "host/host_account";
	}
	
	

	@ExceptionHandler(PayNotFoundException.class)
	public String PayExceptionHandler(PayNotFoundException exception) {
		return "exception/exception_error";
	}
	
	
}
