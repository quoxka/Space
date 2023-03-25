package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.mapper.SpaceManageMapper;

@Repository
@RequiredArgsConstructor
public class SpaceManageDAOImpl implements SpaceManageDAO {
	private final SqlSession sqlSession;

	//공간 등록 페이지 
	@Override
	public int insertSpace(Space space) {
		return sqlSession.getMapper(SpaceManageMapper.class).insertSpace(space);
	}
	@Override
	public Space selectSpaceInfo(int sNo) {
		return sqlSession.getMapper(SpaceManageMapper.class).selectSpaceInfo(sNo);
	}
	
	@Override
	public List<SpaceHost> selectSpaceList(String sHid) {
		return sqlSession.getMapper(SpaceManageMapper.class).selectSpaceList(sHid);
	}
	
	@Override
	public List<SpaceHost> selectSpaceNo(int sNo) {
		return sqlSession.getMapper(SpaceManageMapper.class).selectSpaceNo(sNo);
	}
	
	@Override
	public int updateSpace(Space space) {
		return sqlSession.getMapper(SpaceManageMapper.class).updateSpace(space);
	}

	@Override
	public int removeSpace(int sNo) {
		return sqlSession.getMapper(SpaceManageMapper.class).removeSpace(sNo);
	}
	
	@Override
	public int selectSpaceManageCount(String sHid) {
		return sqlSession.getMapper(SpaceManageMapper.class).selectSpaceManageCount(sHid);
	}
	
	@Override
	public List<Space> selectSpaceManagePaging(Map<String, Object> map) {
		return sqlSession.getMapper(SpaceManageMapper.class).selectSpaceManagePaging(map);
	}
	@Override
	public Space selectSpace(String sHid) {
		return sqlSession.getMapper(SpaceManageMapper.class).selectSpace(sHid);
	}
}
