package xyz.itwill.dto;

import java.util.List;

import lombok.Data;

@Data
public class SelectMember {

	//Review 테이블의 검색결과를 저장하기 위한 필드 : 검색행 0개 이상
	private List<Review> reviewList;
	
	//Question 테이블의 검색결과를 저장하기 위한 필드 : 검색행 0개 이상
	private List<Question> questionList;
	
	//Pay 테이블의 검색결과를 저장하기 위한 필드 : 검색행 0개 이상
	private List<Pay> reserveList;
	
	//HOST 테이블의 검색결과를 저장하기 위한 필드 : 검색행 1개
	private Member member;
	
	//HOST 테이블의 검색결과를 저장하기 위한 필드 : 검색행 1개
	private Host host;
}
