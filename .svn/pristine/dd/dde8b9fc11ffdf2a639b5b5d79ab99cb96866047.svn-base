package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Question;
import xyz.itwill.mapper.QuestionMapper;


@Repository
@RequiredArgsConstructor
public class QuestionDAOImpl implements QuestionDAO {
private final SqlSession sqlSession;
	
	@Override
	public int insertQuestion(Question question) {
		return sqlSession.getMapper(QuestionMapper.class).insertQuestion(question);
	}

	@Override
	public int updateQuestion(Question restBoard) {
		return sqlSession.getMapper(QuestionMapper.class).updateQuestion(restBoard);
	}

	@Override
	public int deleteQuestion(int num) {
		return sqlSession.getMapper(QuestionMapper.class).deleteQuestion(num);
	}

	
	@Override
	public int selectQuestionCount() {
		return sqlSession.getMapper(QuestionMapper.class).selectQuestionCount();
	}
	
	@Override
	public Question selectQuestion(int num) {
		return sqlSession.getMapper(QuestionMapper.class).selectQuestion(num);
	}

	@Override
	public List<Question> selectQuestionList(Map<String, Object> map) {
		return sqlSession.getMapper(QuestionMapper.class).selectQuestionList(map);
	}
}
