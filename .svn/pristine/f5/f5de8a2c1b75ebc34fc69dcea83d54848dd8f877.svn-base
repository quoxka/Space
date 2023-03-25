package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Space;
import xyz.itwill.mapper.FilterMapper;


@Repository
@RequiredArgsConstructor
public class FilterDAOImpl implements FilterDAO{
	
	private final SqlSession sqlSession;
	
	
	@Override
	public int selectSpaceCount() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(FilterMapper.class).selectSpaceCount();
	}

	@Override
	public List<Space> selectSpaceList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(FilterMapper.class).selectSpaceList(map);
	}

}
