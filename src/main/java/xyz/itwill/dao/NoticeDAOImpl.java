package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Notice;
import xyz.itwill.mapper.NoticeMapper;

@Repository
@RequiredArgsConstructor
public class NoticeDAOImpl implements NoticeDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertNotice(Notice notice) {
		return sqlSession.getMapper(NoticeMapper.class).insertNotice(notice);
	}

	@Override
	public int updateNotice(Notice notice) {
		return sqlSession.getMapper(NoticeMapper.class).updateNotice(notice);
	}

	@Override
	public int deleteNotice(int nNo) {
		return sqlSession.getMapper(NoticeMapper.class).deleteNotice(nNo);
	}

	@Override
	public int selectNoticeCount() {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeCount();
	}

	@Override
	public Notice selectNotice(int nNo) {
		return sqlSession.getMapper(NoticeMapper.class).selectNotice(nNo);
	}

	@Override
	public List<Notice> selectNoticeList(Map<String, Object> map) {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeList(map);
	}

	@Override
	public List<Notice> selectstatusNoticeList(Map<String, Object> map) {
		return sqlSession.getMapper(NoticeMapper.class).selectstatusNoticeList(map);
	}

	@Override
	public List<Notice> selectorstatusNoticeList(Map<String, Object> map) {
		return sqlSession.getMapper(NoticeMapper.class).selectorstatusNoticeList(map);
	}



}
