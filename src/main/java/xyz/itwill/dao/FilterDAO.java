package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Space;

public interface FilterDAO {

	int selectSpaceCount();
	List<Space> selectSpaceList(Map<String, Object> map);
}
