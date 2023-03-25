package xyz.itwill.dto;

import java.util.List;

import lombok.Data;

@Data
//Space(N) : Host(1) 관계
public class SpaceHost {
	
	//SPACE 테이블의 검색결과를 저장하기 위한 필드 : 검색행 0개 이상
	private List<Space> spaceList;
	
	//HOST 테이블의 검색결과를 저장하기 위한 필드 : 검색행 1개
	private Host host;
}
