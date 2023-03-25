package xyz.itwill.mapper;


import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Review;
import xyz.itwill.dto.SelectMember;

public interface ReviewMapper {
	
	//Review
	int insertReview(Review review);
	int updateReview(Review review);
	int deleteReview(int rNo);
	int selectReviewCount(String rMid);
	Review selectReview(int rNo);
	//List<Review> selectReviewList(Map<String, Object> map);
	List<SelectMember> selectReviewList(Map<String, Object> map);
	
	
	
	
	//Reserve
	List<SelectMember> SelectReserveList(Map<String, Object> map);
	int deleteReserve(int pNo);
	int selectReserveCount(String pMid);

	
	
	//Question
	List<SelectMember> SelectQuestionList(Map<String, Object> map);
	int deleteQuestion(int qNo);
	int selectQuestionCount(String qMid);
	

	// count 갯수 확인.
	int selectHostReviewCount();
	int selectHostQuestionCount();
	int selectHostReserveCount();
	
	
	// List 출력 처리.
	List<SelectMember> selectHostQuestionList(Map<String, Object> map);
	List<SelectMember> selectHostReserveList(Map<String, Object> map);
	List<SelectMember> selectHostReviewList(Map<String, Object> map);
	
}
