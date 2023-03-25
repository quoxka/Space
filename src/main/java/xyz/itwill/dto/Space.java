package xyz.itwill.dto;

import java.util.Date;
import java.util.List;
import lombok.Data;

@Data
public class Space {
	private int sNo;			//공간 번호
	private String sName;		//공간 이름
	private String sPrice;			//공간 금액
	private String sCate;		//공간 유형
	private String sInfo;		//공간 소개
	private String sTag;		//공간 태그
	private String sGuide;		//시설안내
	private int sPerson;		//사용 가능한 인원 수
	private String sNotice;		//예약시 주의사항
	private String sImg;		//공간 대표 이미지
	private String sImg2;		//공간 상세 이미지
	private String sMap;		//공간 위치
	private String sDetailMap;  //공간 상세 위치
	private String sLocation;   //위치 정보 
	private int sParking;		//주차 여부
	private String sElevator;	//엘레베이터 여부
	private String sRefund;		//환불정책 ?
	private int sHeart;			//공간 찜
	private int sPstatus;		//공간 상태(0:삭제, 1:공개, 2:비공개, 3:미승인)
	private Date sDate;			//공간 등록일
	private String sPdate;		//공간 사용가능한 일자
	private String sHid;		//호스트 아이디
	
	private List<String> sImgList; //이미지 슬라이드에 들어갈 이미지 리스트
	
	
	/*
	<option selected value="cate1">공유주방</option>
	    <option value="cate2">보컬연습실</option>
	    <option value="cate3">렌탈스튜디오</option>
	    <option value="cate4">회의실</option>
	    <option value="cate5">라이브방송</option>
	    <option value="cate6">카페</option>
	    <option value="cate7">컨퍼런스</option>
	    <option value="cate8">강의실</option>
	    <option value="cate9">스몰웨딩</option>
	    <option value="cate10">악기연습실</option>
	    <option value="cate11">운동시설</option>
	    <option value="cate12">녹음실</option>
	 */
}
