package xyz.itwill.dto;

import lombok.Data;

/*
이름        널?       유형             
--------- -------- -------------- 
F_NO      NOT NULL NUMBER(10)    	//번호 
F_TITLE   NOT NULL VARCHAR2(2000) 	//제목
F_CONTENT NOT NULL VARCHAR2(2000) 	//내용
F_STATUS  NOT NULL NUMBER(1)      	//상태 (0:삭제,1:일반)
F_DATE    NOT NULL DATE           	//작성일자
F_MSTATUS NOT NULL NUMBER(1)      	//대상자 (0: 호스트, 1: 사용자)
F_HID     NOT NULL VARCHAR2(20)  	//호스트아이디 (작성자)
 */

//create sequence faq_seq;

@Data
public class Faq {
	private int fNo; 
	private String fTitle;
	private String fContent;
	private int fStatus;
	private String fDate;
	private int fMstatus;
	private String fHid;
	private int rn; //정렬 시 순번을 저장하기 위한 필드
}
