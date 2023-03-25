package xyz.itwill.service;


import java.util.List;

import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;


public interface SpaceService {
	 
	Space getSpaceBySNo(String hId, int sNo);
	
	List<SpaceHost> getSpaceHost(String hId, int sNo);//호스트의 다른 공간
	
	Space getSpaceBySnoTest(int sNo);
}
