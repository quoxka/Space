package xyz.itwill.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Faq;
import xyz.itwill.dto.Heart;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Member;
import xyz.itwill.dto.Space;
import xyz.itwill.exception.HostNotFoundException;
import xyz.itwill.exception.SpaceNotFoundException;
import xyz.itwill.service.HostService;
import xyz.itwill.service.SpaceManageService;
import xyz.itwill.util.Pager;

@Controller
@RequestMapping("/sManage")
@RequiredArgsConstructor
public class SpaceManageController {
	private final SpaceManageService spaceManageService;
	private final WebApplicationContext context;
	private final HostService hostService;
	
	
	//공간정보 관리 페이지 
	
	
	//호스트(로그인)가 등록한 모든 공간을 검색하여 속성값으로 저장하여 공간목록을 출력하는 뷰이름을 반환하는 요청 처리 메소드
	//=> 비로그인 사용자 또는 일반 로그인 사용자가 페이지를 요청할 경우 권한 관련 인터셉터를 이용하여 처리
	@RequestMapping("/manage")
	public String manageView() {
		return "host/space_manage";
	}
	
	//페이징 처리 관련 요청 처리 메소드 
	//호스트 공간정보 관리 클릭했을 경우 
	@RequestMapping(value = "/manageList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> manageList(@RequestParam(defaultValue = "1") int pageNum
			, HttpSession session) {
		
		Host loginHost=(Host)session.getAttribute("loginHost");
		
		int totalSpaceManageList=spaceManageService.getSpaceManageCount(loginHost.getHId());
		int pageSize=6;
		int blockSize=3;
		Pager pager=new Pager(pageNum, totalSpaceManageList, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("sHid", loginHost.getHId());
		
		List<Space> manageList=spaceManageService.getSpaceManagePaging(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("manageList", manageList);
		resultMap.put("pager", pager);
		return resultMap;
	}
	
	
	//공간번호를 전달받아 SPACE 테이블에 저장된 해당 공간번호의 공간정보를 검색하여 속성값으로
	//저장하여 변경할 공간정보를 입력받기 위한 뷰이름을 반환하는 요청 처리 메소드
	//=> 비로그인 사용자 또는 일반 로그인 사용자가 페이지를 요청할 경우 권한 관련 인터셉터를 이용하여 처리
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String spaceModify1(Model model, HttpSession session, @RequestParam int sNo) 
			throws SpaceNotFoundException, HostNotFoundException {
		Host loginHost=(Host)session.getAttribute("loginHost");
		Space spaceinfo=spaceManageService.getSpaceInfo(sNo);
		model.addAttribute("loginHost", loginHost);
		//space.sname 이렇게 쓰기 위해서 -> 호스트 아이디가 아니라 공간번호를 전달받아야 함
		model.addAttribute("space", spaceinfo);
		return "host/space_manage_modify";
	}
	
	
	//공간정보를 전달받아 SPACE 테이블에 저장된 공간정보를 변경하고 공간정보를 출력하는 페이지를 요청하기 위한 URL 주소를 클라이언트에게 전달하는 요청 처리 메소드
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String spaceModify1(@ModelAttribute Space space, @ModelAttribute Host host
			, @RequestParam MultipartFile uploadFile1 ,@RequestParam MultipartFile uploadFile2
			, Model model,HttpSession session) throws SpaceNotFoundException, HostNotFoundException, IllegalStateException, IOException {
		
		String uploadDirectory1=context.getServletContext().getRealPath("/resources/images/img1");
		String uploadDirectory2=context.getServletContext().getRealPath("/resources/images/img2");
		
		String originalFilename1=uploadFile1.getOriginalFilename();
		String originalFilename2=uploadFile2.getOriginalFilename();
		
		File file1=new File(uploadDirectory1, originalFilename1);
		File file2=new File(uploadDirectory2, originalFilename2);
		
		String uploadFilename1=originalFilename1;
		String uploadFilename2=originalFilename2;
		
		int i=0;
		
		while(file1.exists() || file2.exists()) { 
			i++;
			
			int index1=originalFilename1.lastIndexOf(".");
			int index2=originalFilename2.lastIndexOf(".");

			uploadFilename1=originalFilename1.substring(0, index1)+"_"+i+originalFilename1.substring(index1);
			uploadFilename2=originalFilename2.substring(0, index2)+"_"+i+originalFilename2.substring(index2);
			
			file1=new File(uploadDirectory1, uploadFilename1);
			file2=new File(uploadDirectory2, uploadFilename2);
		}
		
		uploadFile1.transferTo(file1);
		uploadFile2.transferTo(file2);
		
		model.addAttribute("originalFilename1", originalFilename1);
		model.addAttribute("originalFilename2", originalFilename2);
		model.addAttribute("uploadFilename1", uploadFilename1);
		model.addAttribute("uploadFilename2", uploadFilename2);
		
		
		Host loginHost = (Host)session.getAttribute("loginHost");
		host.setHId(loginHost.getHId());
		
		//공간정보를 전달받아 공간정보 변경 
		spaceManageService.modifySpaceManage(space);
		hostService.modifyHost(host);
		
		Space spaceinfo=spaceManageService.getSpaceInfo(space.getSNo());
		spaceinfo.setSImg(uploadFilename1);
		spaceinfo.setSImg2(uploadFilename2);
		spaceManageService.modifySpaceManage(spaceinfo);
		return "redirect:/sManage/manage";
	}
	
	//공간번호를 전달받아 SPACE 테이블에 저장된 공간정보를 삭제하고 호스트가 등록한 공간목록을
	//출력하는 페이지를 요청하기 위한 URL 주소를 클라이언트에게 전달하는 요청 처리 메소드
	// => 비로그인 사용자 또는 관리자가 아닌 사용자가 페이지 요청할 경우 권한 관련 인터셉터를 이용하여 처리
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String spaceRemove(@RequestParam int sNo) throws SpaceNotFoundException {
		//아이디가 아니라 공간번호를 전달받아야 해당 공간만 삭제가 가능하다 
		spaceManageService.deleteSpaceManage(sNo);
		return "redirect:/sManage/manage";
	}
	
	
	
	
	
	
	
	
	
	
	@ExceptionHandler(SpaceNotFoundException.class)
	public String SpaceNotFoundExceptionHandler(SpaceNotFoundException exception) {
		//에러페이지 설정 
		return "host/user_error";
	}
}