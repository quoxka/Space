package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Faq;
import xyz.itwill.mapper.FaqMapper;

@Repository
@RequiredArgsConstructor
public class FaqDAOImpl implements FaqDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertFaq(Faq faq) {
		return sqlSession.getMapper(FaqMapper.class).insertfaq(faq);
	}

	@Override
	public int updateFaq(Faq faq) {
		return sqlSession.getMapper(FaqMapper.class).updateFaq(faq);
	}

	@Override
	public int deleteFaq(int fNo) {
		return sqlSession.getMapper(FaqMapper.class).deleteFaq(fNo);
	}

	@Override
	public int selectFaqCount() {
		return sqlSession.getMapper(FaqMapper.class).selectFaqCount();
	}

	@Override
	public Faq selectFaq(int fNo) {
		return sqlSession.getMapper(FaqMapper.class).selectFaq(fNo);
	}

	@Override
	public List<Faq> selectFaqList(Map<String, Object> map) {
		return sqlSession.getMapper(FaqMapper.class).selectFaqList(map);
	}

	@Override
	public List<Faq> selectstatusFaqList(Map<String, Object> map) {
		return sqlSession.getMapper(FaqMapper.class).selectstatusFaqList(map);
	}

	@Override
	public List<Faq> selectorstatusFaqList(Map<String, Object> map) {
		return sqlSession.getMapper(FaqMapper.class).selectorstatusFaqList(map);
	}

	
	
	
}
