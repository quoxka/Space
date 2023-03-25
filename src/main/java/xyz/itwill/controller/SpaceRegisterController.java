package xyz.itwill.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Notice;
import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.exception.BoardNotFoundException;
import xyz.itwill.exception.ExistsHostException;
import xyz.itwill.exception.HostNotFoundException;
import xyz.itwill.exception.SpaceNotFoundException;
import xyz.itwill.service.HostService;
import xyz.itwill.service.SpaceManageService;


@Controller
@RequestMapping("/sRegister")
@RequiredArgsConstructor
public class SpaceRegisterController {
	private final SpaceManageService spaceManageService;
	private final HostService hostService;
	private final WebApplicationContext context; //파일 업로드 필요 
	
	//공간 등록 클릭 -> 공간 등록 페이지로 이동
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String spaceAdd(HttpSession session, Model model) {
		Host loginHost = (Host)session.getAttribute("loginHost");
		model.addAttribute("loginHost",loginHost);
		return "host/space_register";
	}
	
	
	
	//입력값 작성 후 공간 등록 클릭 -> 삽입 -> 공간 관리 페이지로 이동(목록 확인)
	//Host 테이블에 있는 컬럼값들도 삽입 
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String spaceAdd(@ModelAttribute("space") Space space, @ModelAttribute("host") Host host
			, @RequestParam MultipartFile uploadFile1 ,@RequestParam MultipartFile uploadFile2
			, Model model, HttpSession session) throws IllegalStateException, IOException, SpaceNotFoundException, HostNotFoundException {
		
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
		
		//1. 첫번째문제 : 아이디가 삽입 안됨 -> <input type="hidden" name="sHid" value="${loginHost.HId }">
		spaceManageService.addSpaceRegister(space);
		
		//2. loginHost 안에 있는 컬럼값 변경 안됨 ㅋ 
		hostService.modifyHost(loginHost);
		
		//해당 공간번호의 공간정보를 검색하여 이미지 바꾸기 
		Space spaceinfo=spaceManageService.getSpaceInfo(space.getSNo());
		spaceinfo.setSImg(uploadFilename1);
		spaceinfo.setSImg2(uploadFilename2);
		spaceManageService.modifySpaceManage(spaceinfo);
		
		return "redirect:/sManage/list";
	}
}
