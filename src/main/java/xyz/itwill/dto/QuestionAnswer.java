package xyz.itwill.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QuestionAnswer {
	private int qaNo;			//질의 답글 번호
	private String qaContent;	//질의 답글 내용
	private int qaStatus;		//질의 답글 게시글 상태(0:삭제, 1:일반, 2:비밀)
	private Date qaDate;		//질의 답글 작성날짜
	private int qaStatus2;		//질의 답글 작성 상태(0:미작성, 1:작성)
	private int qaQno;			//질의 번호
	
}
