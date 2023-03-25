package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Review;
import xyz.itwill.dto.SelectMember;
import xyz.itwill.mapper.NoticeMapper;
import xyz.itwill.mapper.ReviewMapper;

@Repository
@RequiredArgsConstructor
public class ReviewDAOImpl implements ReviewDAO {
    
    private final SqlSession sqlSession;

    

	@Override
	public int insertReview(Review review) {
		
		return sqlSession.getMapper(ReviewMapper.class).insertReview(review);
	}

	@Override
	public int updateReview(Review review) {
		
		return sqlSession.getMapper(ReviewMapper.class).updateReview(review);
	}

	@Override
	public int deleteReview(int rNo) {
		
		return sqlSession.getMapper(ReviewMapper.class).deleteReview(rNo);
	}

	@Override
	public int selectReviewCount(String rMid) {
		
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCount(rMid);
	}

	@Override
	public Review selectReview(int rNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReviewMapper.class).selectReview(rNo);
	}

	@Override
	public List<SelectMember> selectReviewList(Map<String, Object> map) {
		
		return sqlSession.getMapper(ReviewMapper.class).selectReviewList(map); 
	}

	@Override
	public List<SelectMember> SelectReserveList(Map<String, Object> map) {
		
		return sqlSession.getMapper(ReviewMapper.class).SelectReserveList(map);
	}

	@Override
	public int deleteReserve(int pNo) {
		
		return sqlSession.getMapper(ReviewMapper.class).deleteReserve(pNo);
	}

	@Override
	public int selectReserveCount(String pMid) {
		
		return sqlSession.getMapper(ReviewMapper.class).selectReserveCount(pMid);
	}

	@Override
	public List<SelectMember> SelectQuestionList(Map<String, Object> map) {
		
		return sqlSession.getMapper(ReviewMapper.class).SelectQuestionList(map);
	}

	@Override
	public int deleteQuestion(int qNo) {
	
		return sqlSession.getMapper(ReviewMapper.class).deleteQuestion(qNo);
	}

	@Override
	public int selectQuestionCount(String qMid) {
	
		return sqlSession.getMapper(ReviewMapper.class).selectQuestionCount(qMid);
	}

	@Override
	public int selectHostReviewCount() {
		
		return sqlSession.getMapper(ReviewMapper.class).selectHostReviewCount();
	}
	
	
	@Override
	public int selectHostQuestionCount() {
		
		return sqlSession.getMapper(ReviewMapper.class).selectHostQuestionCount();
	}

	@Override
	public int selectHostReserveCount() {
		
		return sqlSession.getMapper(ReviewMapper.class).selectHostReserveCount();
	}
	
	/*
	@Override
	public int selectHostQuestionCount(String qHid) {
		
		return sqlSession.getMapper(ReviewMapper.class).selectHostQuestionCount(qHid);
	}

	@Override
	public int selectHostReserveCount(String pHid) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReviewMapper.class).selectHostReviewCount(pHid);
	}
	*/
	@Override
	public List<SelectMember> selectHostQuestionList(Map<String, Object> map) {
		
		return sqlSession.getMapper(ReviewMapper.class).selectHostQuestionList(map);
	}

	@Override
	public List<SelectMember> selectHostReserveList(Map<String, Object> map) {
	
		return sqlSession.getMapper(ReviewMapper.class).selectHostReserveList(map);
	}

	@Override
	public List<SelectMember> selectHostReviewList(Map<String, Object> map) {
		
		return sqlSession.getMapper(ReviewMapper.class).selectHostReviewList(map);
	}

	
}