package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Review;
import xyz.itwill.dto.SelectMember;
import xyz.itwill.exception.BoardNotFoundException;


public interface ReviewService {
	
	//리뷰
    void addReview(Review review);
    void modifyReview(Review review) throws BoardNotFoundException;
	void removeReview(int rNo) throws BoardNotFoundException; 
	int getReviewCount(String rMid);
	Review getReview(int nNo) throws BoardNotFoundException;
	//List<Review> getReviewList(Map<String, Object> map);
	List<SelectMember> getReviewList(Map<String, Object> map);
	
	//예약
	List<SelectMember> getReserveList(Map<String, Object> map);
	int getReserveCount(String pMid);
	
	
	//QNA
	List<SelectMember> getQuestionList(Map<String, Object> map);
	int getQuestionCount(String qMid);
	
	
	
	
	
	
	
		//예약
		List<SelectMember> getHostReserveList(Map<String, Object> map);
		int getHostReserveCount();
		
		
		//QNA
		List<SelectMember> getHostQuestionList(Map<String, Object> map);
		int getHostQuestionCount();
		
		//QNA
		List<SelectMember> getHostReviewList(Map<String, Object> map);
		int getHostReviewCount();
	
	

}