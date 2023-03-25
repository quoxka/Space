package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.FilterDAO;
import xyz.itwill.dao.ReviewDAO;
import xyz.itwill.dao.SpaceDAO;
import xyz.itwill.dto.Review;
import xyz.itwill.dto.SelectMember;
import xyz.itwill.dto.Space;
import xyz.itwill.exception.BoardNotFoundException;

@Service
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    private ReviewDAO reviewDAO;
    
  

	@Override
	public void addReview(Review review) {
		reviewDAO.insertReview(review);
		
	}

	@Override
	public void modifyReview(Review review) throws BoardNotFoundException {
		reviewDAO.updateReview(review);
		
	}

	@Override
	public void removeReview(int rNo) throws BoardNotFoundException {
		reviewDAO.deleteReview(rNo);
		
	}


	@Override
	public int getReviewCount(String rMid) {
		
		return reviewDAO.selectReviewCount(rMid);
	}

	@Override
	public Review getReview(int rNo) throws BoardNotFoundException {
		if(reviewDAO.selectReview(rNo)==null) {
			throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
			}
			return reviewDAO.selectReview(rNo);
	}
	/*
	@Override
	public List<Review> getReviewList(Map<String, Object> map) {
		return reviewDAO.selectReviewList(map);
	}
	*/
	@Override
	public List<SelectMember> getReviewList(Map<String, Object> map) {
		return reviewDAO.selectReviewList(map);
	}

	@Override
	public List<SelectMember> getReserveList(Map<String, Object> map) {
		
		return reviewDAO.SelectReserveList(map);
	}

	@Override
	public int getReserveCount(String pMid) {
		
		return reviewDAO.selectReserveCount(pMid);
	}

	@Override
	public List<SelectMember> getQuestionList(Map<String, Object> map) {
		
		return reviewDAO.SelectQuestionList(map);
	}

	@Override
	public int getQuestionCount(String qMid) {
	
		return reviewDAO.selectQuestionCount(qMid);
	}

	
	
	@Override
	public List<SelectMember> getHostReserveList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return reviewDAO.selectHostReserveList(map);
	}

	@Override
	public int getHostReserveCount() {
		// TODO Auto-generated method stub
		return reviewDAO.selectHostReserveCount();
	}

	@Override
	public List<SelectMember> getHostQuestionList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return reviewDAO.selectHostQuestionList(map);
	}

	@Override
	public int getHostQuestionCount() {
		// TODO Auto-generated method stub
		return reviewDAO.selectHostQuestionCount();
	}
	
	@Override
	public List<SelectMember> getHostReviewList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return reviewDAO.selectHostReviewList(map);
	}

	@Override
	public int getHostReviewCount() {
		// TODO Auto-generated method stub
		return reviewDAO.selectHostReviewCount();
	}
	
	
  
}