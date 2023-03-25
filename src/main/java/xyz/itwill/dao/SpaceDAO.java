package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;

public interface SpaceDAO {
	Space selectSpaceBySNo(String hId, int sNo);
    List<SpaceHost> selectSpaceHost(String hId, int sNo);
    
    Space selectSpaceBySnoTest(int sNo);
}