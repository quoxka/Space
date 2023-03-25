package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Host;
import xyz.itwill.mapper.HostMapper;

@Repository
@RequiredArgsConstructor
public class HostDAOImpl implements HostDAO {
	
	private final SqlSession sqlSession;

	@Override
	public int insertHost(Host host) {
		return sqlSession.getMapper(HostMapper.class).insertHost(host);
	}

	@Override
	public int updateHost(Host host) {
		return sqlSession.getMapper(HostMapper.class).updateHost(host);
	}

	@Override
	public Host selectHost(String hId) {
		return sqlSession.getMapper(HostMapper.class).selectHost(hId);
	}

	@Override
	public int selectHostCount() {
		return sqlSession.getMapper(HostMapper.class).selectHostCount();
	}


	@Override
	public List<Host> selectHostList(Map<String, Object> map) {
		return sqlSession.getMapper(HostMapper.class).selectHostList(map);
	}

	@Override
	public int deleteHost(String hId) {
		return sqlSession.getMapper(HostMapper.class).deleteHost(hId);
	}

	@Override
	public List<Host> selectstatusHostList(Map<String, Object> map) {
		return sqlSession.getMapper(HostMapper.class).selectstatusHostList(map);
	}

	@Override
	public int removeHost(String hId) {
		return sqlSession.getMapper(HostMapper.class).removeHost(hId);
	}



	
	
}
