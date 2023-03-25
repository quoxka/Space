package xyz.itwill.service;


import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Heart;
import xyz.itwill.dto.Member;
import xyz.itwill.exception.ExistsMemberException;
import xyz.itwill.exception.HeartNotFoundException;
import xyz.itwill.exception.LoginAuthFailException;
import xyz.itwill.exception.MemberNotFoundException;
import xyz.itwill.exception.SpaceNotFoundException;

public interface MemberService {
		
	void addMember(Member member) throws ExistsMemberException;
	void modifyMember(Member member) throws MemberNotFoundException;
	void pwModifyMember(Member member) throws MemberNotFoundException;
	void pwModifyMember2(Member member) throws MemberNotFoundException;
	Member getMember(String mId) throws MemberNotFoundException;
	Member getEmailMember(String mEmail) throws MemberNotFoundException;
	Member loginAuth(Member member) throws LoginAuthFailException;
	void deleteMember(String mId) throws MemberNotFoundException;
	
	void addHeart(Heart heart);
	List<Heart> getHeartList(String hMid);
	List<Heart> getHeartListInfo(int hSid) throws SpaceNotFoundException;
	int getHeartCount(String hMid);
	List<Heart> getHeartPaging(Map<String, Object> map);
	


}
