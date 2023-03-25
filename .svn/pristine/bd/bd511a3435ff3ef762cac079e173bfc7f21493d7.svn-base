package xyz.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.mapper.SpaceSelectMapper;

@Repository
@RequiredArgsConstructor
public class SpaceDAOImpl implements SpaceDAO {
    private final SqlSession sqlSession;

	@Override
	public Space selectSpaceBySNo(String hId, int sNo) {
		return sqlSession.getMapper(SpaceSelectMapper.class).selectSpaceBySNo(hId, sNo);
	}

	@Override
	public List<SpaceHost> selectSpaceHost(String hId, int sNo) {
		return sqlSession.getMapper(SpaceSelectMapper.class).selectSpaceHost(hId, sNo);
	}
    
    @Override
    public Space selectSpaceBySnoTest(int sNo) {
    	return sqlSession.getMapper(SpaceSelectMapper.class).selectSpaceBySnoTest(sNo);
    }
}