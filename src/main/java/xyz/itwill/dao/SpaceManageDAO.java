package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Host;
import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;

public interface SpaceManageDAO {
	
	//1. 공간 삽입 
	int insertSpace(Space space);
	Space selectSpaceInfo(int sNo);
	
	//2. 호스트 아이디 전달받아 호스트가 등록한 공간 목록 검색 
	List<SpaceHost> selectSpaceList(String sHid);
	
	//3. 공간번호를 전달받아 해당 공간정보 검색 
	List<SpaceHost> selectSpaceNo(int sNo);
	
	//4. 공간정보수정 
	int updateSpace(Space space);
	
	//5. 공간번호를 전달받아 공간 상태 삭제로 변경 
	int removeSpace(int sNo);
	
	//6. 호스트 아이디를 전달받아 호스트가 등록한 공간의 갯수 검색 
	int selectSpaceManageCount(String sHid);
	
	//7. 원하는 페이지의 행만 검색 
	List<Space> selectSpaceManagePaging(Map<String, Object> map);
	
	Space selectSpace(String sHid);
}
