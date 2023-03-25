package xyz.itwill.dto;

import java.util.Date;

import lombok.Data;


@Data
public class ReviewAnswer {
	private int aNo;			//리뷰 답글 번호
	private String aContent;	//리뷰 답글 내용
	private int aStatus;		//리뷰 답글 게시글 상태(0:삭제, 1:일반, 2:비밀)
	private Date aDate;		//리뷰 답글 작성 날짜
	private int aStatus2;		//리뷰 답글 작성 상태(0:미작성, 1:작성)
	private int aRno;			//리뷰 번호
}
