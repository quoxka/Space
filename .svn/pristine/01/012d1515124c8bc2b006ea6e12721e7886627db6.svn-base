package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import xyz.itwill.dto.Heart;
import xyz.itwill.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int updateMember(Member member);
	Member selectMember(String mId);
	Member selectEmailMember(String mEmail);
	int removeMember(String mId);
	int updatePassword(Member member);
	
	int insertHeart(Heart heart);
	List<Heart> selectHeartList(String hMid);
	List<Heart> selectHeartListInfo(int hSid);
	int selectHeartCount(String hMid);
	List<Heart> selectHeartPaging(Map<String, Object> map);
	
}
