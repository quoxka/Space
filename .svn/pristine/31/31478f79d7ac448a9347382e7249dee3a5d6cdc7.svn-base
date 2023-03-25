package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.QuestionDAO;
import xyz.itwill.dto.Question;


@Service
@RequiredArgsConstructor
public class QuestionServiceImpl implements QuestionService{
private final QuestionDAO questionDAO;
	
	@Transactional
	@Override
	public void addQuestion(Question question) {
		questionDAO.insertQuestion(question);
	}

	@Transactional
	@Override
	public void modifyQuestion(Question question) {
		/*
		if(restBoardDAO.selectRestBoard(restBoard.getNum())==null) {
			throw new Exception("해당 게시글을 찾을 수 없습니다.");
		}
		*/
		questionDAO.updateQuestion(question);
	}

	@Transactional
	@Override
	public void removeQuestion(int num) {
		questionDAO.deleteQuestion(num);
	}

	@Override
	public int getQuestionCount() {
		return questionDAO.selectQuestionCount();
	}
	
	@Override
	public Question getQuestion(int num) {
		return questionDAO.selectQuestion(num);
	}

	@Override
	public List<Question> getQuestionList(Map<String, Object> map) {
		return questionDAO.selectQuestionList(map);
	}
}
