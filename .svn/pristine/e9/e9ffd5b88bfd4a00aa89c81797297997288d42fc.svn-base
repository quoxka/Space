package xyz.itwill.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.Heart;
import xyz.itwill.dto.Member;
import xyz.itwill.mapper.MemberMapper;
@Repository
@RequiredArgsConstructor
public class MemberDAOImpl implements MemberDAO {
	
	private final SqlSession sqlSession;
	
	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}
	@Override
	public int updateMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMember(member);
	}
	
	@Override
	public Member selectMember(String mId) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(mId);
	}
	@Override
	public Member selectEmailMember(String mEmail) {
		return sqlSession.getMapper(MemberMapper.class).selectEmailMember(mEmail);
	}
	
	@Override
	public int updatePassword(Member member) {
	
		return sqlSession.getMapper(MemberMapper.class).updatePassword(member);
	}
	@Override
	public int removeMember(String mId) {
		return sqlSession.getMapper(MemberMapper.class).removeMember(mId);
	}
	
	
	@Override
	public List<Heart> selectHeartList(String hMid) {
		return sqlSession.getMapper(MemberMapper.class).selectHeartList(hMid);
	}
	
	@Override
	public List<Heart> selectHeartListInfo(int hSid) {
		return sqlSession.getMapper(MemberMapper.class).selectHeartListInfo(hSid);
	}
	
	@Override
	public int selectHeartCount(String hMid) {
		return sqlSession.getMapper(MemberMapper.class).selectHeartCount(hMid);
	}
	
	@Override
	public List<Heart> selectHeartPaging(Map<String, Object> map) {
		return sqlSession.getMapper(MemberMapper.class).selectHeartPaging(map);
	}
	@Override
	public int insertHeart(Heart heart) {
		return sqlSession.getMapper(MemberMapper.class).insertHeart(heart);
	}
	
	
	

}



