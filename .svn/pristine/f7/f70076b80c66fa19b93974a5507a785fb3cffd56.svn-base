package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Host;
import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.exception.SpaceNotFoundException;

public interface SpaceManageService {
	//1. 공간 삽입 
	//void addSpaceRegister(Space space, Host host);
	void addSpaceRegister(Space space);
	Space getSpaceInfo(int sNo) throws SpaceNotFoundException;
	
	//2. 호스트 아이디 전달받아 호스트가 등록한 공간 목록 검색 
	List<SpaceHost> getSpaceManage(String sHid);
	
	//3. 공간번호를 전달받아 해당 공간정보 검색 - HOST 테이블에 있는 컬럼까지 
	List<SpaceHost> getSpaceNo(int sNo) throws SpaceNotFoundException;
	
	//4. 공간정보수정 
	//void modifySpaceManage(Space space, Host host) throws SpaceNotFoundException;
	void modifySpaceManage(Space space) throws SpaceNotFoundException;
	
	//5. 공간번호를 전달받아 공간 상태 삭제로 변경 
	void deleteSpaceManage(int sNo) throws SpaceNotFoundException;
	
	//6. 호스트 아이디를 전달받아 호스트가 등록한 공간의 갯수 검색 
	int getSpaceManageCount(String sHid);
	
	//7. 원하는 페이지의 행만 검색 
	List<Space> getSpaceManagePaging(Map<String, Object> map);
	
	Space getSpace(String sHid);
}
