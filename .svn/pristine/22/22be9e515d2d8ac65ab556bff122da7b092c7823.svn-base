package xyz.itwill.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.PayDAO;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.HostSpacePay;
import xyz.itwill.dto.Member;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.SelectMember;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.service.OrderService;
import xyz.itwill.util.Pager;
//멤버 결제페이지 관련 요청 처리 메소드
@Controller
@RequiredArgsConstructor
public class OrderController {

	private final OrderService orderService;	
	private final PayDAO payDao;
	
	//주문 페이지 요청 처리 메소드
	@RequestMapping(value = "/order")
	public String orderDisplay(@RequestParam(defaultValue = "2023-01-02")String pRedate,@RequestParam(defaultValue = "3") int pRepeople,@RequestParam(defaultValue = "1")int sNo, Model model) {
		
		//상세에서 pRedate,pRepeople,sNo 넘겨받아 Model 객체에 저장
		int pSno=sNo;
		model.addAttribute("pRedate",pRedate);
		model.addAttribute("pRepeople",pRepeople);
		
		SpaceHost spaceHost=orderService.getSpaceHost(pSno);
		model.addAttribute("host",spaceHost.getHost());
		model.addAttribute("space",spaceHost.getSpaceList().get(0));
		
		//스페이스 카테고리를 원하는 값으로 출력
		String sCate = spaceHost.getSpaceList().get(0).getSCate();
		if(sCate.equals("cate1")) {
			sCate="공유주방";
		} else if(sCate.equals("cate2")) {
			sCate="보컬연습실";
		} else if(sCate.equals("cate3")) {
				sCate="렌탈스튜디오";
		} else if(sCate.equals("cate4")) {
			sCate="회의실";
		} else if(sCate.equals("cate5")) {
			sCate="라이브방송";
		} else if(sCate.equals("cate6")) {
			sCate="카페";
		} else if(sCate.equals("cate7")) {
			sCate="컨퍼런스";
		} else if(sCate.equals("cate8")) {
			sCate="강의실";
		} else if(sCate.equals("cate9")) {
			sCate="스몰웨딩";
		} else if(sCate.equals("cate10")) {
			sCate="악기연습실";
		} else if(sCate.equals("cate11")) {
			sCate="운동시설";
		} else if(sCate.equals("cate12")) {
			sCate="녹음실";
		} 
		model.addAttribute("sCate",sCate);		
		
		return "member/member_order";
	}
	
	//주문페이지에서 입력된 값을 저장
	@RequestMapping(value = "/order_go")
	public String orderGo(@ModelAttribute Pay pay, HttpSession session) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		pay.setPMid(loginMember.getMId());
		orderService.addPay(pay);
		return "redirect:/member_reserve";
	}

	//order 전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
	@RequestMapping(value = "/order_List", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> OrderList(@RequestParam(defaultValue = "1") int pageNum) {
		int totalQuestion=payDao.selectPayCount();
		int pageSize=6;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalQuestion, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<Pay> orderList=orderService.getPayList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("orderList", orderList);
		resultMap.put("pager", pager);
		return resultMap;
	}	
	
	
}
