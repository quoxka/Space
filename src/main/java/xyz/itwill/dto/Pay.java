package xyz.itwill.dto;

import lombok.Data;

/*
이름         널?       유형            
---------- -------- ------------- 
P_NO       NOT NULL NUMBER(10)    - 결제 번호 (식별자)

P_RENAME   NOT NULL VARCHAR2(50)  - 결제한 예약자 이름
P_REPHONE  NOT NULL VARCHAR2(50)  - 결제한 예약자 연락처
P_REEMAIL  NOT NULL VARCHAR2(100) - 결제한 예약자  이메일

P_REDATE   NOT NULL VARCHAR2(50)  - 결제한 공간의 예약날짜
P_REPEOPLE NOT NULL NUMBER(10)    - 결제한 공간의 예약인원

P_PURPOSE  NOT NULL VARCHAR2(100) - 결제한  공간의 사용목적
P_REQUEST  NOT NULL VARCHAR2(500) - 결제한 공간의  요청사항

P_WAY               NUMBER(1)     - 결제 방식 (신용카드, 계좌이체)
P_DATE     NOT NULL DATE          - SYSDATE - 결제 날짜

P_MID      NOT NULL VARCHAR2(20)  - MEMBER 테이블의 식별자
P_SNO      NOT NULL NUMBER(10)    - SPACE  테이블의 식별자

P_STATUS   NOT NULL NUMBER(1)     - 결제 상태 (0:결제 - 기본값) (1:환불)
P_WSTATUS           NUMBER        - 정산 상태 (1:미완료 - 기본값) (0:호스트정산처리, 9 관리자승인완료 )
P_WDATE             DATE     	  - 정산 날짜
*/
//create sequence pay_seq;
//결제 테이블
@Data
public class Pay {
	private int pNo;  //자동 시퀀스값
	
	private String pRename; //결제페이지에서 입력값
	private String pRephone; //결제페이지에서 입력값
	private String pReemail; //결제페이지에서 입력값
	
	private String pRedate; //상세에서 받아옴 hidden으로 
	private int pRepeople;  //상세에서 받아옴 hidden으로
	
	private String pPurpose;//결제페이지에서 입력값
	private String pRequest;//결제페이지에서 입력값
	
	private int pWay; //결제페이지에서 입렵값
	private String pDate;  //결제한 sysdate
	
	private int pSno; //상세에서 받아옴 hidden이나 요청 URL주소..?
	private String pMid; //세션에 저장된 loginMember객체 저장
	
	private int pstatus;  //insert 되면 일단 결제상태 0 저장됨
	private int pWstatus; //insert 되면 일단 정산상태 1 저장됨
	private int pWno;    //insert 되면 일단 null 저장 후, pWstatus가 0으로 변경되면 pWno에 wNo 저장
	private String pWdate;  //insert 되면 일단 null 저장 후, pWsatus가 0으로 변경되면 pWDate에 sysdate 저장
	private String rn; //일련번호 설정 위한 필드
	
}



