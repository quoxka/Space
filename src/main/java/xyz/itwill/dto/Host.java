package xyz.itwill.dto;

import lombok.Data;

/*
이름            널?       유형            
------------- -------- ------------- 
H_ID          NOT NULL VARCHAR2(20)  
H_PW          NOT NULL VARCHAR2(200) 
H_NAME        NOT NULL VARCHAR2(50)  
H_EMAIL       NOT NULL VARCHAR2(100) 
H_PHONE       NOT NULL VARCHAR2(50)  
H_STATUS      NOT NULL NUMBER(1)  		//0:탈퇴호스트 1:일반호스트,9:관리자
   
H_SPACENAME            VARCHAR2(200) 	//상호명
H_CEONAME              VARCHAR2(50)  	//대표자명
H_NUM                  VARCHAR2(100) 	//사업자 등록 번호
H_ACCOUNT              VARCHAR2(100) 	//계좌번호
H_BANK                 VARCHAR2(50)  	//은행명
H_ACCOUNTNAME          VARCHAR2(50) 	//예금주

<select class="form-control" id="hBank" name="hBank" required>
  <option value="bank1">농협은행</option>
  <option value="bank2">신한은행</option>
  <option value="bank3">카카오뱅크</option>
  <option value="bank4">케이뱅크</option>
  <option value="bank5">우리은행</option>
</select>
*/
//create sequence host_seq;
//호스트 테이블
@Data
public class Host {
	private String hId;
	private String hPw;
	private String hName;
	private String hEmail;
	private String hPhone;
	private int hStatus;          
	private String hSpacename;   
	private String hCeoname;      
	private String hNum;          
	private String hAccount;      
	private String hBank;        
	private String hAccountname;  
	private int rn;
}
